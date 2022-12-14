@extends('admin.main')

@section('header') 
    <script src="{{ asset('public/ckeditor/ckeditor.js') }}"></script>
@endsection

@section('content')
    <form action="" method="post" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="product">Tên Sản Phẩm</label>
                        <input type="text" name="name" value="{{ $product['name'] }}" class="form-control" placeholder="Nhập tên sản phẩm">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Danh Mục</label>
                        <select class="form-control" name="menu_id">
                            @foreach($menus as $menu)
                                <option value="{{ $menu->id }}">{{ $menu->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="product">Giá Gốc</label>
                        <input type="number" name="price" value="{{ $product['price'] }}"  class="form-control" >
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="product">Giá Giảm</label>
                        <input type="number" name="price_sale" value="{{ $product['price_sale'] }}"  class="form-control" >
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label>Mô Tả </label>
                <textarea name="description" class="form-control">{{ $product['description'] }}</textarea>
            </div>

            <div class="form-group">
                <label>Mô Tả Chi Tiết</label>
                <textarea name="content" id="content" class="form-control">{{ $product['content'] }}</textarea>
            </div>

            <div class="form-group">
                    <label for="image" style="font-weight: bold">Chọn Ảnh Upload:</label>
                    <input type="file" name="image" id="image" class="form-control-file">

            </div>

            <div class="form-group">
                <label>Kích Hoạt</label>

                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="1" type="radio" id="active" name="active" 
                    {{ $product->active == 1 ? 'checked = ""' : ''}}>
                    <label for="active" class="custom-control-label">Có</label>
                </div>

                <div class="custom-control custom-radio">
                    <input class="custom-control-input" value="0" type="radio" id="no_active" name="active"
                    {{ $product->active == 0 ? 'checked = ""' : ''}}>
                    <label for="no_active" class="custom-control-label">Không</label>
                </div>
            </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập Nhật Sản Phẩm</button>
        </div>
        
    </form>
@endsection

@section('footer')
<script>
    CKEDITOR.replace('content');
</script>
@endsection