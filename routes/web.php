<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/debug', function () {
    $a = 1;
    $b = 2;
    $c = $a + $b;
    var_dump($c);
    return "test abc";
});
