<?php

namespace Cart\Controllers;

use Slim\Router;
use Slim\Views\Twig;
use Cart\Models\Product;
use Cart\Models\Category;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class HomeController
{
	public function index(Request $request, Response $response, Twig $view, Product $product, Category $category)
    {
        $categories = $category->get();

        $products = $product->where('featured', 'y')->get();

        return $view->render($response, 'home.twig', [
            'products' => $products,
            'categories' => $categories
        ]);
    }
 
     public function filter($filter, Request $request, Response $response, Twig $view, Router $router, Product $product, Category $category)
     {
 
         $categories = $category->get();
 
         $category = $category->where('slug', $filter)->first();
 
         if (!$category) {
             return $response->withRedirect($router->pathFor('home'));
         }
 
         $products = $product->where('category', $category->id)->get();
 
         return $view->render($response, 'category.twig', [
            'products' => $products,
            'categories' => $categories,
            'category' => $category
		]);
	}
}