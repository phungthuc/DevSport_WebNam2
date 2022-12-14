<?php

namespace App\Http\Controllers;

use App\Http\Services\Product\ProductService2;
use App\Http\Services\Slider\SliderService;
use Illuminate\Http\Request;

class LoadController extends Controller
{

    protected $slider;
    protected $product;
    public function __construct(SliderService $slider, ProductService2 $product)
    {
        $this->slider = $slider;
        $this->product = $product;
    }
    public function index()
    {
        return view('home', [
            'title' => 'Shop Thể Thao Dev Sports',
            'sliders' => $this->slider->show(),
            'products' => $this->product->getAll()
        ]);
    }

    public function about()
    {
        return view('about', [
            'title' => 'Shop Thể Thao Dev Sports',
            'sliders' => $this->slider->show(),
            'products' => $this->product->getAll()
        ]);
    }

    public function contact()
    {
        return view('contact', [
            'title' => 'Shop Thể Thao Dev Sports',
            'sliders' => $this->slider->show(),
            'products' => $this->product->getAll()
        ]);
    }
}
