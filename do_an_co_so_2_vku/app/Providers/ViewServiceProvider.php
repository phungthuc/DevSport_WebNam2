<?php
 
namespace App\Providers;

use App\Models\Menu;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
 
class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
 
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $menus = Menu::select('id', 'name', 'parent_id')->where('active', 1)->orderByDesc('id')->get();
        $menus1 = Menu::select('id', 'name', 'parent_id')->where('parent_id', '!=', 0)->orderByDesc('id')->get();
        View::share('menus', $menus);
        View::share('menus1', $menus1);
    }
}