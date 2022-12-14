<?php

namespace App\Http\Controllers;

use App\Http\Services\Product\ProductService2;
use Illuminate\Http\Request;

class ViewProductController extends Controller
{

    protected $productService;
    public function __construct(ProductService2 $productService2)
    {
        $this->productService = $productService2;
    }

    public function index($id)
    {
        $product = $this->productService->show($id);
        $products = $this->productService->getAll();
        return view('products.content', [
            'title' => $product->name,
            'products' => $products,
            'product' => $product
        ]);
    }
}
