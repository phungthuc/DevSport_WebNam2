<?php

namespace App\Http\Controllers;

use App\Http\Services\Slider\CartService;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session as FacadesSession;

class CartController extends Controller
{
    protected $cartService;

    public function __construct(CartService $cartService)
    {
        $this->cartService = $cartService;
    }

    public function index(Request $request)
    {
        $result = $this->cartService->create($request);
        
        if($result == false){
            return redirect()->back();
        }

        return redirect('/carts');
    }

    public function show()
    {
        $products = $this->cartService->getProduct();
        return view('carts.list', [
            'title' => 'Giỏ Hàng',
            'products' => $products,
            'carts' => FacadesSession::get('carts')
        ]);
    }

    public function delete($id)
    {
        $this->cartService->delete($id);

        return redirect() -> back();
    }

    public function add(Request $request)
    {
        $this->cartService->addCart($request);
        return redirect()->back();
    }
}
