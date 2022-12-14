<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFormRequest;
use Illuminate\Http\Request;
use App\Http\Services\Menu\MenuService;
use App\Models\Menu;
class MenuController extends Controller
{
    protected $menuService;

    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }
    public function index()
    {
        return view('admin.menu.list', [
            'title' => 'Danh Sách Danh Mục Mới Nhất',
            'menus' => $this -> menuService -> getAll()
        ]);
    }

    public function create()
    {
        return view('admin.menu.add', [
            'title' => 'Thêm Danh Mục Mới',
            'menus' => $this -> menuService -> getParent()
        ]);
    }

    public function store(CreateFormRequest $request)
    {
        $this->menuService->create($request);

        return redirect() -> back();
    }

    public function edit(Menu $menu)
    {
        return view('admin.menu.edit', [
            'title' => 'Chỉnh Sửa Danh Mục: ' . $menu->name,
            'menu' => $menu,
            'menus' => $this -> menuService -> getParent()
        ]);
    }

    public function update(CreateFormRequest $request, Menu $menu)
    {
        $this->menuService->update($request, $menu);
        return redirect()->route('menu.list');
    }

    public function destroy($id)
    {
        $this->menuService->destroy($id);

        return redirect() -> back();
    }
}
