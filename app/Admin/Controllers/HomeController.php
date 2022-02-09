<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->header('Trang chủ')
            ->row(function (Row $row) {
                $row->column(12, function (Column $column) {
                    // $type = TypeContract::where('status', 1)->get();
                    // $address = AddressContract::where('status', 1)->get();
                    $column->append(view('search'));
                });
            });
    }
}
