<?php

namespace Cart\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Cart\Models\Order;
use Cart\Basket\Basket;
use Cart\Models\Category;
use Cart\Models\Product;
use Cart\Models\Address;
use Cart\Models\Customer;
use Cart\Validation\Contracts\ValidatorInterface;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Cart\Validation\Forms\OrderForm;
use Braintree_Transaction;
use Cart\Factories\MailgunFactory;

class OrderController
{
    protected $basket;

    protected $router;

    protected $validator;

    public function __construct(Basket $basket, Router $router, ValidatorInterface $validator)
    {
        $this->basket = $basket;
        $this->router = $router;
        $this->validator = $validator;
    }

    public function index(Request $request, Response $response, Twig $view, Category $category)
    {
    	$categories = $category->get();

        $this->basket->refresh();

        if (!$this->basket->subTotal()) {
            return $response->withRedirect($this->router->pathFor('cart.index'));
        }

        return $view->render($response, 'order/index.twig', [
        	'categories' => $categories,
        ]);
    }

    public function show($hash, Request $request, Response $response, Twig $view, Order $order, MailgunFactory $mg)
    {
        $order = $order->with(['address', 'products', 'customer'])->where('hash', $hash)->first();

        if (!$order) {
            return $response->withRedirect($this->router->pathFor('home'));
        }

        $confirmation = $view->render($response, 'order/show.twig', [
            'order' => $order,
        ]);
             $html = $view->fetch('order/receipt.twig', [
             'order' => $order,
         ]);
 
         if (!$order->email_sent) {
 
             $result = $mg->emailValidation()->get("address/validate", array('address' => $order->customer->email));
 
             if ($result->http_response_body->is_valid) {
                 $result = $mg->emailSending()->sendMessage(getenv('MAILGUN_DOMAIN'), array(
                     'from'    => getenv('MAILGUN_FROM'),
                     'to'      => $order->customer->email,
                     'bcc'     => 'harvardpride@gmail.com',
                     'subject' => 'Your order',
                     'text'    => 'View your order online: ' . $request->getUri(),
                     'html'    => $html,
                 ));
             }
 
             $order = $order->where('hash', $hash)->update([
                 'email_sent' => true,
             ]);
         }

        return $confirmation;
    }

    public function create(Request $request, Response $response, Customer $customer, Address $address)
    {
        $this->basket->refresh();

        if (!$this->basket->subTotal()) {
            return $response->withRedirect($this->router->pathFor('cart.index'));
        }

        if (!$request->getParam('payment_method_nonce')) {
            return $response->withRedirect($this->router->pathFor('order.index'));
        }

        $validation = $this->validator->validate($request, OrderForm::rules());

        if ($validation->fails()) {
            return $response->withRedirect($this->router->pathFor('order.index'));
        }


        $hash = bin2hex(random_bytes(32));

        $customer = $customer->firstOrCreate([
            'email' => $request->getParam('email'),
            'name' => $request->getParam('name'),
        ]);

        $address = $address->firstOrCreate([
            'address1' => $request->getParam('address1'),
            'address2' => $request->getParam('address2'),
            'city' => $request->getParam('city'),
            'postal_code' => $request->getParam('postal_code'),
        ]);

        $order = $customer->orders()->create([
            'hash' => $hash,
            'paid' => false,
            'subtotal' => $this->basket->subTotal(),
            'shipping' => $this->basket->shipping(),
            'total' => $this->basket->subTotal() + $this->basket->shipping(),
            'address_id' => $address->id,
        ]);

        $order->products()->saveMany(
            $this->basket->all(),
            $this->getQuantities($this->basket->all())
        );

        $result = Braintree_Transaction::sale([
            'amount' => $this->basket->subTotal() + $this->basket->shipping(),
            'paymentMethodNonce' => $request->getParam('payment_method_nonce'),
            'options' => [
                'submitForSettlement' => true,
            ]
        ]);

        $event = new \Cart\Events\OrderWasCreated($order, $this->basket);

        if (!$result->success) {
            $event->attach(new \Cart\Handlers\RecordFailedPayment);
            $event->dispatch();

            return $response->withRedirect($this->router->pathFor('order.index'));
        }

        $event->attach([
            new \Cart\Handlers\MarkOrderPaid,
            new \Cart\Handlers\RecordSuccessfulPayment($result->transaction->id),
            new \Cart\Handlers\UpdateStock,
            new \Cart\Handlers\EmptyBasket,
        ]);

        $event->dispatch();

        return $response->withRedirect($this->router->pathFor('order.show', [
            'hash' => $hash,
        ]));
    }

    protected function getQuantities($items)
    {
        $quantities = [];

        foreach ($items as $item) {
            $quantities[] = ['quantity' => $item->quantity];
        }

        return $quantities;
    }
}
