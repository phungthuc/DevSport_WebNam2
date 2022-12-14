<header>
	<!-- Header desktop -->
	<div class="container-menu-desktop">

		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<div class="logo">
					DEV SPORTS
				</div>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li class="">
							<a href="{{route('index')}}" class="p-lr-15 trans-04">
								Trang Chủ
							</a>
						</li>
						@foreach($menus as $key => $menu)
						@if($menu->parent_id == 0)
						<li>
							<a href="{{route('index')}}" class="p-lr-15 trans-04">
								{{$menu->name}}
							</a>

							<ul class="sub-menu">
								@foreach($menus1 as $k => $menu1)
								@if($menu1->parent_id == $menu->id)
								<li>
									<a href="{{route('index')}}">
										{{$menu1->name}}
									</a>
								</li>
								@endif
								@endforeach
							</ul>
						</li>
						@endif
						@endforeach

						<li>
							<a href="{{route('index.about')}}">Thông Tin</a>
						</li>

						<li>
							<a href="{{route('index.contact')}}">Liên Hệ</a>
						</li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>

					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="!">
						<a href="{{route('index.show')}}"><i class="zmdi zmdi-shopping-cart"></i></a>
					</div>


				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo">
			DEV SPORTS
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m">
			<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
				<i class="zmdi zmdi-search"></i>
			</div>

			<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="!">
				<a href="{{route('index.show')}}"><i class="zmdi zmdi-shopping-cart"></i></a>
			</div>


		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box">
				<span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">

		<ul class="main-menu-m">
			<li class="">
				<a href="{{route('index')}}" class="p-lr-15 trans-04">
					Trang Chủ
				</a>
			</li>
			@foreach($menus as $key => $menu)
			@if($menu->parent_id == 0)
			<li>
				<a href="{{route('index')}}" class="p-lr-15 trans-04">
					{{$menu->name}}
				</a>

				<ul class="sub-menu">
					@foreach($menus1 as $k => $menu1)
					@if($menu1->parent_id == $menu->id)
					<li>
						<a href="{{route('index')}}">
							{{$menu1->name}}
						</a>
					</li>
					@endif
					@endforeach
				</ul>
			</li>
			@endif
			@endforeach

			<li>
				<a href="{{route('index.about')}}">Thông Tin</a>
			</li>

			<li>
				<a href="{{route('index.contact')}}">Liên Hệ</a>
			</li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="{{ asset ('public/template/images/icons/icon-close2.png') }}" alt="CLOSE">
			</button>

			<form class="wrap-search-header flex-w p-l-15">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search" placeholder="Search...">
			</form>
		</div>
	</div>
</header>