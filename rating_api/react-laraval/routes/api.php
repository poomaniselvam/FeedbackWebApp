<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomersController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\ShippingController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::resource('customers', CustomersController::class);


Route::resource('product', ProductsController::class);
Route::resource('shipping',ShippingController::class);

