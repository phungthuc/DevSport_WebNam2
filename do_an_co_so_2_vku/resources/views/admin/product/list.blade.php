@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th style="width: 50px;">ID</th>
                <th>Tên Sản Phẩm</th>
                <th>Danh Mục</th>
                <th>Giá Gốc</th>
                <th>Giá Khuyến Mãi</th>
                <th>Trạng Thái</th>
                <th>Cập Nhật</th>
                <th>&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($products as $key => $product)
                <tr>
                    <td>{{ $product['id'] }}</td>
                    <td>{{ $product['name'] }}</td>
                    <td>{{ $product->menu->name }}</td>
                    <td>{{ $product['price'] }}</td>
                    <td>{{ $product['price_sale'] }}</td>
                    <td>
                        @if($product['active'] == 0)
                            <span class="btn btn-danger btn-xs">NO</span>
                        @else
                            <span class="btn btn-success btn-xs">YES</span></td>
                        @endif
                    <td>{{ $product['updated_at'] }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="{{ route('product.edit', $product['id']) }}"><i class="fa-solid fa-pen-to-square"></i></a>
                        <form action="{{ route('product.delete', $product['id']) }}" method="post">
                            @csrf
                            @method('delete')
                            <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i></button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <!-- Pagination product -->
    {!! $products->links() !!}
@endsection

