<?php

namespace App\Http\Services\Slider;

use App\Models\Cart;
use App\Models\Customer;
use App\Models\Product;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;


class CartService
{
    public function create($request)
    {
        $qty = (int)$request->input('num_product');
        $product_id = (int)$request->input('product_id');

        if ($qty <= 0 || $product_id <= 0) {
            Session::flash('error', 'Số lượng hoặc Sản phẩm không chính xác');
            return false;
        }

        $carts = Session::get('carts');
        if (is_null($carts)) {
            Session::put('carts', [
                $product_id => $qty
            ]);
            return true;
        }

        $exists = Arr::exists($carts, $product_id);//check san pham co ton tai trong gio hang hay khong
        if ($exists) {
            $carts[$product_id] = $carts[$product_id] + $qty;
            Session::put('carts', $carts);
            return true;
        }

        $carts[$product_id] = $qty;
        Session::put('carts', $carts);

        return true;
    }

    public function getProduct()
    {
        $carts = Session::get('carts');
        if (is_null($carts)) return [];

        $productId = array_keys($carts);
        return Product::select('id', 'name', 'price', 'price_sale', 'thumb')
            ->where('active', 1)
            ->whereIn('id', $productId)
            ->get();
    }

    public function delete($id)
    {
        $carts = Session::get('carts');

        unset($carts[$id]);//xoa session carts['id']
        Session::put('carts', $carts);//cap nhat lai session
        return true;
    }

    public function addCart($request)
    {
        try {
            DB::beginTransaction();
            
            $carts = Session::get('carts');

            if (is_null($carts))
                return false;

            $customer = Customer::create([
                'name' => (string) $request->input('name'),
                'phone' => (int) $request->input('phone'),
                'address' => (string) $request->input('address'),
                'email' => (string) $request->input('email'),
                'content' => (string) $request->input('content')
            ]);

            $this->infoProductCart($carts, $customer->id);

            DB::commit();
            Session::flash('success', 'Đặt Hàng Thành Công');
            Session::forget('carts');
        } catch (\Exception $err) {
            DB::rollBack();
            Session::flash('error', 'Đặt Hàng Lỗi, Vui lòng thử lại sau');
            return false;
        }

        return true;
    }

    protected function infoProductCart($carts, $customer_id)
    {
        $productId = array_keys($carts);
        $products = Product::select('id', 'name', 'price', 'price_sale', 'thumb')
            ->where('active', 1)
            ->whereIn('id', $productId)
            ->get();

        $data = [];
        foreach ($products as $product) {
            $data[] = [
                'customer_id' => $customer_id,
                'product_id' => $product->id,
                'pty'   => $carts[$product->id],
                'price' => $product->price_sale != 0 ? $product->price_sale : $product->price
            ];
        }

        return Cart::insert($data);
    }

    public function getCustomer()
    {
        return Customer::orderByDesc('id')->paginate(15);
    }

    public function getAll($customer)
    {
        return $customer->carts()->with([
            'product' => function ($query) {
                $query->select('id', 'name', 'thumb');
        }])->get();
    }

    public function destroy($id)
    {
        $customer = Customer::where('id', $id)->first();
        if($customer){
            $customer->delete();
            Session::flash('success', 'Xóa Khách Hàng Thành Công');
            return true;
        }
        Session::flash('error', 'Không Thể Xóa Khách Hàng');
        return false;
    }
}

