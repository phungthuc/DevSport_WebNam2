<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Services\Slider\CartService;
use App\Models\Customer;
use Illuminate\Http\Request;

class ShowCartController extends Controller
{
    protected $cart;

    public function __construct(CartService $cart)
    {
        $this->cart = $cart;
    }
    public function index()
    {
        return view('admin.carts.customer', [
            'title' => 'Danh Sách Đơn Hàng Đã ĐẶt',
            'customers' => $this->cart->getCustomer()
        ]);
    }

    public function show(Customer $customer)
    {
        $carts = $this->cart->getAll($customer);
        return view('admin.carts.detail', [
            'title' => 'Chi Tiết Đơn Hàng', 
            'customer' => $customer,
            'carts' => $carts
        ]);
    }

    public function destroy($id)
    {
        $this->cart->destroy($id);
        return redirect()->back();
    }
}
