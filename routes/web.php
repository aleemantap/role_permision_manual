<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\RolesController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',[AuthController::class,'login']);
Route::post('/',[AuthController::class,'auth_login']);
Route::get('logout',[AuthController::class,'logout']);

Route::group(['middleware' => 'useradmin'], function(){
    Route::get('panel/dashboard',[DashboardController::class,'dashboard']);
    
    Route::get('panel/roles',[RolesController::class,'list']);
    Route::get('panel/roles/add',[RolesController::class,'add']);
    Route::post('panel/roles/add',[RolesController::class,'insert']);
    Route::get('panel/roles/edit/{id}',[RolesController::class,'edit']);
    Route::post('panel/roles/edit',[RolesController::class,'update']);
    Route::get('panel/roles/delete/{id}',[RolesController::class,'delete']);

    Route::get('panel/user',[UserController::class,'list']);
    Route::get('panel/user/add',[UserController::class,'add']);
    Route::post('panel/user/add',[UserController::class,'insert']);
    Route::get('panel/user/edit/{id}',[UserController::class,'edit']);
    Route::post('panel/user/edit',[UserController::class,'update']);
    Route::get('panel/user/delete/{id}',[UserController::class,'delete']);



    Route::get('panel/product',[ProductController::class,'list']);
    Route::get('panel/product/add',[ProductController::class,'add']);
    Route::post('panel/product/add',[ProductController::class,'insert']);
    Route::get('panel/product/edit/{id}',[ProductController::class,'edit']);
    Route::post('panel/product/edit',[ProductController::class,'update']);
    Route::get('panel/product/delete/{id}',[ProductController::class,'delete']);




});




