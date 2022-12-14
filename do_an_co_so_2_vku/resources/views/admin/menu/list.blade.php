@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th style="width: 50px;">ID</th>
                <th>Tên Danh Mục</th>
                <th>Trạng Thái</th>
                <th>Cập Nhật</th>
                <th>&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($menus as $key => $menu)
                <tr>
                    <td>{{ $menu['id'] }}</td>
                    <td>
                        @if($menu['parent_id'] == 0)
                            {{$menu['name']}}
                        @else
                            |--{{$menu['name']}}
                        @endif
                    </td>
                    <td>
                        @if($menu['active'] == 0)
                            <span class="btn btn-danger btn-xs">NO</span>
                        @else
                            <span class="btn btn-success btn-xs">YES</span></td>
                        @endif
                    <td>{{ $menu['updated_at'] }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="{{ route('menu.edit', $menu['id']) }}"><i class="fa-solid fa-pen-to-square"></i></a>
                        <form action="{{ route('menu.delete', $menu['id']) }}" method="post">
                            @csrf
                            @method('delete')
                            <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i></button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <!-- Pagination menu -->
    {!! $menus->links() !!}
@endsection

