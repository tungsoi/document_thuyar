<?php

use Illuminate\Routing\Router;

Route::get('', 'App\\Http\\Controllers\\HomeController@index');


Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('', 'HomeController@index')->name('home');
    $router->post('search', 'DocumentController@search')->name('document.search');
    $router->resources([
        'categories'    =>  CategoryController::class,
        'documents'     =>  DocumentController::class
    ]);
});
