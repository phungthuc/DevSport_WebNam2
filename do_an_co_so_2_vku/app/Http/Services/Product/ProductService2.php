<?php

namespace App\Http\Services\Product;

use App\Models\Product;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class ProductService2
{
    public function getAll()
    {
        return Product::with('menu')
        ->orderByDesc('id')->get();
    }

    public function show($id)
    {
        return Product::where('id', $id)
        ->where('active', 1)
        ->with('menu')
        ->first();
    }
}