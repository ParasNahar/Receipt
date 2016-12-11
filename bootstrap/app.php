<?php

use Cart\App;
use Dotenv\Dotenv;
use Slim\Views\Twig;
use Illuminate\Database\Capsule\Manager as Capsule;

session_start();

require realpath(__DIR__ . '/../vendor/autoload.php');
 
 $dotenv = new Dotenv(realpath(__DIR__ . '/..'));
 $dotenv->load();

$app = new App;

$container = $app->getContainer();

$capsule = new Capsule;
$capsule->addConnection([
	'driver' => 'mysql',
	'host' => getenv('DB_HOST'),
    'database' => getenv('DB_NAME'),
    'username' => getenv('DB_USER'),
    'password' => getenv('DB_PASS'),
	'charset' => 'utf8',
	'collation' => 'utf8_unicode_ci',
	'prefix' => ''
]);

$capsule->setAsGlobal();
$capsule->bootEloquent();

Braintree_Configuration::environment('sandbox');
Braintree_Configuration::merchantId(getenv('MERCHANT_ID'));
Braintree_Configuration::publicKey(getenv('PUBLIC_KEY'));
Braintree_Configuration::privateKey(getenv('PRIVATE_KEY'));

require realpath(__DIR__ . '/../app/routes.php');

$app->add(new \Cart\Middleware\ValidationErrorsMiddleware($container->get(Twig::class)));
$app->add(new \Cart\Middleware\OldInputMiddleware($container->get(Twig::class)));