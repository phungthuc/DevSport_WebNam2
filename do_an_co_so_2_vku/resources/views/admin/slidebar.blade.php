<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
        <img src="{{ asset('public/images/logo.jpg') }}" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">DEV Sports Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="info">
                <a href="#" class="d-block">Admin 1</a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Danh Mục
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('menu.create') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Danh Mục</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('menu.list')}} " class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Danh Mục</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->

        <!-- Sidebar-product -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="#" class="nav-link">
                    <i class="fa-brands fa-product-hunt"></i>
                        <p>
                            Sản Phẩm
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('product.create') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Sản Phẩm</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('product.list') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Sản Phẩm</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-product -->

        <!-- Sidebar-slider -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="#" class="nav-link">
                    <i class="fa-solid fa-sliders"></i>
                        <p>
                            Slider
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('slider.create') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Slider</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('slider.list') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Sider</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-slider -->

        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-cart-plus"></i>
                        <p> Giỏ Hàng
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('customers.index') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Đơn Hàng</p>
                            </a>
                        </li>

                    </ul>
                </li>

            </ul>
        </nav>
    </div>
    <!-- /.sidebar -->
</aside> 