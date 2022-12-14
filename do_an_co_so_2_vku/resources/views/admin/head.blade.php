<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="csrf-token" content="{{ csrf_token() }}">

<title>{{ $title }}</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css>

<!-- icheck bootstrap -->
<link rel="stylesheet" href="{{ asset('public/template/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
<!-- Theme style -->
<link rel="stylesheet" href="{{ asset('public/template/admin/dist/css/adminlte.min.css') }}">

@yield('header')

<style>
    .hidden{
        display: none;
    }
</style>




