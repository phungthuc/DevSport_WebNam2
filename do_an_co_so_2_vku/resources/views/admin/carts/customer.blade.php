@extends('admin.main')

@section('content')
<table class="table">
    <thead>
        <tr>
            <th style="width: 50px">ID</th>
            <th>Tên Khách Hàng</th>
            <th>Số Điện Thoại</th>
            <th>Email</th>
            <th>Ngày Đặt hàng</th>
            <th style="width: 100px">&nbsp;</th>
        </tr>
    </thead>
    <tbody>
        @foreach($customers as $key => $customer)
        <tr>
            <td>{{ $customer->id }}</td>
            <td>{{ $customer->name }}</td>
            <td>{{ $customer->phone }}</td>
            <td>{{ $customer->email }}</td>
            <td>{{ $customer->created_at }}</td>
            <td>
                <a class="btn btn-primary btn-sm" href="{{route('customers.show', $customer)}}">
                    <i class="fas fa-eye"></i>
                </a>
                <form action="{{route('customers.delete', $customer['id'])}}" method="post">
                    @csrf
                    @method('delete')
                    <button class="btn btn-danger btn-sm">
                        <i class="fas fa-trash"></i>
                    </button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

<div class="card-footer clearfix">
    {!! $customers->links() !!}
</div>
@endsection