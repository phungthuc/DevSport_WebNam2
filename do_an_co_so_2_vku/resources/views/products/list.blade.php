<div class="row isotope-grid">
    @foreach($products as $key => $product)
    <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
        <!-- Block2 -->
        <div class="block2">
            <div class="block2-pic hov-img0">
                <img src="{{ asset('public/uploads/products/'.$product->thumb) }}" alt="IMG-PRODUCT">

                <a href="{{route('index.product', $product['id'])}}"
                    class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
                    Chi Tiết
                </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
                <div class="block2-txt-child1 flex-col-l ">
                    <a href="/san-pham/{{$product['id']}}-{{$product['name']}}.html"
                        class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                        {{$product['name']}}
                    </a>

                    @if($product['price_sale'] == 0)
                    <span class="stext-105 cl3">
                        {{number_format($product['price'])}} <u>đ</u>
                    </span>
                    @endif
                    @if($product['price_sale'] != 0)
                    <span class="stext-105 cl3">
                        {{number_format($product['price_sale'])}} <u>đ</u>
                    </span>
                    @endif
                    @if($product['price'] == 0)
                    <span class="stext-105 cl3">
                        Liên Hệ
                    </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endforeach
</div>