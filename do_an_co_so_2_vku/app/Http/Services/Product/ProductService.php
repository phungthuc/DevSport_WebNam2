<?php

namespace App\Http\Services\Product;

use App\Models\Menu;
use App\Models\Product;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class ProductService 
{

    public function getMenu()
    {
        return Menu::Where('active', 1)->get();
    }

    protected function isValidPrice($request)
    {
        if($request->input('price') != 0 && $request->input('price_sale') != 0
        && $request->input('price_sale') >= $request->input('price')
        ){
            Session::flash('error', 'Giá Giảm Phải Nhỏ Hơn Giá Gốc');
            return false;
        }

        if($request->input('price_sale') != 0 && (int)$request->input('price') == 0){
            Session::flash('error', 'Vui Lòng Nhập Giá Gốc');
            return false;
        }
        return true;
    }
    public function insert($request)
    {
        $isValidPrice = $this->isValidPrice($request);
        if($isValidPrice == false) return false;

        $des = 'public/uploads/products';
        $imgname = $request->file('image')->getClientOriginalName();
        try {
            Product::create([
                'name' => (string) $request -> input('name'),
                'description' => (string) $request -> input('description'),
                'content' => (string) $request -> input('content'),
                'menu_id' => (int) $request -> input('menu_id'),
                'price' => (int) $request -> input('price'),
                'price_sale' => (int) $request -> input('price_sale'),
                'active' => (string) $request -> input('active'),
                'thumb' => $imgname
            ]);
            $request->file('image')->move($des,$imgname);

            Session::flash('success', 'Tạo Sản Phẩm Thành Công');
        } catch (\Exception $err) {
            Session::flash('error', $err -> getMessage());
            return false;
        }

        return true;
    }
    public function getAll()
    {
        return Product::with('menu')
        ->orderbyDesc('id')->paginate(15);
    }
    public function update($request, $product)
    {
        $isValidPrice = $this->isValidPrice($request);
        if($isValidPrice == false) return false;

        $des = 'public/uploads/products';
        $imgname = $request->file('image')->getClientOriginalName();
        try {
            $product->fill($request->input());
            $product->thumb = $request->file('image')->getClientOriginalName();
            $product->save();

            $request->file('image')->move($des,$imgname);
            
            Session::flash('success', 'Cập Nhật Sản Phẩm Thành Công');
        } catch (\Exception $err) {
            Session::flash('error', 'Có Lỗi Vui Lòng Thử Lại');
            return false;
        }
        return true;
    }

    public function destroy($id)
    {
        $product = Product::where('id', $id)->first();
        if($product){
            $product->delete();
            Session::flash('success', 'Xóa Sản Phẩm Thành Công');
            return true;
        }
        Session::flash('error', 'Không Thể Xóa Sản Phẩm');
        return false;
    }
}