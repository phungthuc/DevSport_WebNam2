<?php

use App\Http\Controllers\Admin\CartController as AdminCartController;
use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\Productcontroller;
use App\Http\Controllers\Admin\ShowCartController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\UploadController;
use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\LoadController;
use App\Http\Controllers\MenuController2;
use App\Http\Controllers\ViewProductController;
use Illuminate\Support\Facades\Route;

// Route::get('/',function(){
//     return view('welcome');
// });

Route::prefix('admin/users/login') -> group(function() {
    Route::get('/', [LoginController::class, 'index'])
    ->name('admin.login');
    Route::post('store', [LoginController::class, 'store'])
    ->name('admin.store');
});

Route::middleware(['auth']) -> group(function () {

    Route::prefix('admin')->group(function(){
        
        Route::get('/', [MainController::class, 'index'])
        ->name('admin.main');
        Route::get('main', [MainController::class, 'index']);
    
        #Menu
        Route::prefix('menus')->group(function(){
            Route::get('add', [MenuController::class, 'create'])
            ->name('menu.create');
            Route::post('add', [MenuController::class, 'store'])
            ->name('menu.store');
            Route::get('list', [MenuController::class, 'index'])
            ->name('menu.list');
            Route::get('edit/{menu}', [MenuController::class, 'edit'])
            ->name('menu.edit');
            Route::post('edit/{menu}', [MenuController::class, 'update'])
            ->name('menu.update');
            Route::delete('destroy/{id}', [MenuController::class, 'destroy'])
            ->name('menu.delete');
        });

        #Product
        Route::prefix('products')->group(function(){
            Route::get('add', [Productcontroller::class, 'create'])
            ->name('product.create');
            Route::post('add', [Productcontroller::class, 'store'])
            ->name('product.store');
            Route::get('list', [Productcontroller::class, 'index'])
            ->name('product.list');
            Route::get('edit/{product}', [Productcontroller::class, 'edit'])
            ->name('product.edit');
            Route::post('edit/{product}', [Productcontroller::class, 'update'])
            ->name('product.update');
            Route::delete('destroy/{id}', [Productcontroller::class, 'destroy'])
            ->name('product.delete');
        });

        #Slider
        Route::prefix('sliders')->group(function(){
            Route::get('add', [SliderController::class, 'create'])
            ->name('slider.create');
            Route::post('add', [SliderController::class, 'store'])
            ->name('slider.store');
            Route::get('list', [SliderController::class, 'index'])
            ->name('slider.list');
            Route::get('edit/{slider}', [SliderController::class, 'edit'])
            ->name('slider.edit');
            Route::post('edit/{slider}', [SliderController::class, 'update'])
            ->name('slider.update');
            Route::delete('destroy/{id}', [SliderController::class, 'destroy'])
            ->name('slider.delete');
        });

        #Cart
        Route::prefix('carts')->group(function () {
            Route::get('customers', [ShowCartController::class, 'index'])
            ->name('customers.index');
            Route::get('customers/view/{customer}', [ShowCartController::class, 'show'])
            ->name('customers.show');
            Route::delete('customers/destroy/{id}', [ShowCartController::class, 'destroy'])
            ->name('customers.delete');
        });


    });
    
});

Route::prefix('/') -> group(function() {
    Route::get('', [LoadController::class, 'index'])
    ->name('index');
    Route::get('sanpham/{id}', [ViewProductController::class, 'index'])
    ->name('index.product');
    Route::post('add-cart', [CartController::class, 'index'])
    ->name('index.addcart');
    Route::get('carts', [CartController::class, 'show'])
    ->name('index.show');
    Route::delete('destroy/{id}', [CartController::class, 'delete'])
    ->name('index.delete');
    Route::post('carts', [CartController::class, 'add'])
    ->name('index.add');
    Route::get('about', [LoadController::class, 'about'])
    ->name('index.about');
    Route::get('contact', [LoadController::class, 'contact'])
    ->name('index.contact');
});
