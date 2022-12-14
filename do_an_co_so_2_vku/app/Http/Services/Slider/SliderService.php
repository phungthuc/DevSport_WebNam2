<?php

namespace App\Http\Services\Slider;

use App\Models\Slider;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;


class SliderService
{
    public function insert($request)
    {

        $des = 'public/uploads/sliders';
        $imgname = $request->file('image')->getClientOriginalName();
        try {
            Slider::create([
                'name' => (string) $request -> input('name'),
                'url' => (string) $request -> input('url'),
                'sort_by' => (int) $request -> input('sort_by'),
                'active' => (int) $request -> input('active'),
                'thumb' => $imgname
            ]);
            $request->file('image')->move($des,$imgname);

            Session::flash('success', 'Tạo Slider Thành Công');
        } catch (\Exception $err) {
            Session::flash('error', $err -> getMessage());
            return false;
        }

        return true;
    }

    public function getAll()
    {
        return Slider::orderbyDesc('id')->paginate(15);
    }

    public function update($request, $slider)
    {

        $des = 'public/uploads/sliders';
        $imgname = $request->file('image')->getClientOriginalName();
        try {
            $slider->fill($request->input());
            $slider->thumb = $request->file('image')->getClientOriginalName();
            $slider->save();

            $request->file('image')->move($des,$imgname);
            
            Session::flash('success', 'Cập Nhật Slider Thành Công');
        } catch (\Exception $err) {
            Session::flash('error', 'Có Lỗi Vui Lòng Thử Lại');
            return false;
        }
        return true;
    }

    public function destroy($id)
    {
        $slider = Slider::where('id', $id)->first();
        if($slider){
            $slider->delete();
            Session::flash('success', 'Xóa Slider Thành Công');
            return true;
        }
        Session::flash('error', 'Không Thể Xóa Slider');
        return false;
    }

    public function show()
    {
        return Slider::where('active', 1)->orderbyDesc('sort_by')->get();
    }

}
