<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'image' => 'required'

        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Tên Sản Phẩm Không Được Để Trống!',
            'image.required' => 'Ảnh Mô Tả Sản Phẩm Không Được Để Trống!'
        ];
    }
}
