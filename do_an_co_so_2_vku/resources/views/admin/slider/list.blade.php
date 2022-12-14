@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th style="width: 50px;">ID</th>
                <th>Tiêu Đề</th>
                <th>Đường Dẫn</th>
                <th>Ảnh</th>
                <th>Trạng Thái</th>
                <th>Cập Nhật</th>
                 <th style="width: 100px">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($sliders as $key => $slider)
                <tr>
                    <td>{{ $slider['id'] }}</td>
                    <td>{{ $slider['name'] }}</td>
                    <td>{{ $slider['url'] }}</td>
                    <td>
                        <a href="{{ asset('public/uploads/sliders/'.$slider['thumb']) }}" target="_blank">
                            <img src="{{ asset('public/uploads/sliders/'.$slider['thumb']) }}" height="40px">
                        </a>
                    </td>
                    <td>
                        @if($slider['active'] == 0)
                            <span class="btn btn-danger btn-xs">NO</span>
                        @else
                            <span class="btn btn-success btn-xs">YES</span></td>
                        @endif
                    <td>{{ $slider['updated_at'] }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="{{ route('slider.edit', $slider) }}"><i class="fa-solid fa-pen-to-square"></i></a>
                        <form action="{{ route('slider.delete', $slider['id']) }}" method="post">
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
    {!! $sliders->links() !!}
@endsection

