<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->get('/about', 'HomeController@about')->name('about');
    $router->get('/customuser', 'HomeController@customuser')->name('customuser');
    $router->post('/customuser', 'HomeController@customuserstore')->name('customuserstore');
    $router->get('/customusershow', 'HomeController@customusershow');
    $router->get('/customusergridshow', 'HomeController@customusergridshow');
    $router->get('/dynamicsave', 'HomeController@dynamicsave')->name('dynamcisave');
    $router->post('/dynamicsave', 'HomeController@dynamicsavestore')->name('dynamicsavestore');
    $router->get('/dynamicsave1', 'HomeController@dynamicsave1')->name('dynamcisave1');
    $router->post('/dynamicsave1', 'HomeController@dynamicsavestore1')->name('dynamicsavestore1');
    $router->get('/dynamicsave2', 'HomeController@dynamicsave2')->name('dynamcisave2');
    $router->post('/dynamicsave2', 'HomeController@dynamicsavestore2')->name('dynamicsavestore2');

    $router->get('/dynamicsave3', 'HomeController@dynamicsave3')->name('dynamcisave3');
    $router->post('/dynamicsave3', 'HomeController@dynamicsavestore3')->name('dynamicsavestore3');

    $router->get('/ajaxvalue', 'HomeController@ajaxvalue')->name('ajaxvalue');
    $router->post('/ajaxvaluepass', 'HomeController@ajaxvaluepass')->name('ajaxvaluepass');

    $router->get('/ajaxvalue1', 'HomeController@ajaxvalue1')->name('ajaxvalue1');
    $router->post('/ajaxvaluepass1', 'HomeController@ajaxvaluepass1')->name('ajaxvaluepass1');

    $router->get('/auth/login', function () {
        return view("login");
    });
});
