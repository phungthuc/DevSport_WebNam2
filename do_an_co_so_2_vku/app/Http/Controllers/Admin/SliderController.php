<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\Slider\SliderService;
use App\Models\Slider;

class SliderController extends Controller
{
    protected $sliderService;

    public function __construct(SliderService $sliderService)
    {
        $this->sliderService = $sliderService;
    }
    
    public function create()
    {
        return view('admin.slider.add', [
            'title' => 'Thêm Slider Mới'
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'image' => 'required',
            'url' => 'required'
        ]);
        $this->sliderService->insert($request);

        return redirect() -> back();
    }

    public function index()
    {
        return view('admin.slider.list', [
            'title' => 'Danh Sách Slider Mới Nhất',
            'sliders' => $this->sliderService->getAll()
        ]);
    }

    public function edit(Slider $slider)
    {
        return view('admin.slider.edit', [
            'title' => 'Chỉnh Sửa Slider: ' . $slider->name,
            'slider' => $slider
        ]);
    }

    public function update(Request $request, Slider $slider)
    {
        $this->validate($request, [
            'name' => 'required',
            'image' => 'required',
            'url' => 'required'
        ]);
        $this->sliderService->update($request, $slider);
        return redirect() -> route('slider.list');
    }

    public function destroy($id)
    {
        $this->sliderService->destroy($id);
        return redirect()->back();
    }
}
