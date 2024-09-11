<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomersController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\ShippingController;
use App\Http\Controllers\RatingController;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\NavbarController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\BodycolorController;
use App\Http\Controllers\NavbarimageController;
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
Route::resource('rating', ratingController::class);
Route::resource('product', ProductsController::class);
Route::resource('shipping',ShippingController::class);
Route::resource('admin_login',AdminLoginController::class);
Route::resource('navbar',NavbarController::class);
Route::resource('question',QuestionController::class);
Route::resource('bodycolors', BodycolorController::class);
Route::resource('bodybg', NavbarimageController::class);

