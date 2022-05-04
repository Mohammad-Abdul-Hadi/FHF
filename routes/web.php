<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
Route::get('/', function () {
    return view('welcome');
});
*/

Route::get('/', 'App\Http\Controllers\PagesController@index');
Route::get('/people', 'App\Http\Controllers\PagesController@people');
Route::get('/projects', 'App\Http\Controllers\PagesController@projects');
Route::get('/papers', 'App\Http\Controllers\PagesController@papers');
Route::get('/person', 'App\Http\Controllers\PagesController@person');

Route::resource('posts', 'App\Http\Controllers\PostsController');
Auth::routes();

Route::get('/dashboard', [App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');
Route::post('/dashboard', [App\Http\Controllers\DashboardController::class, 'store'])->name('dashboard.store');
Route::delete('/dashboard/{image}', [App\Http\Controllers\DashboardController::class, 'destroy'])->name('dashboard.destroy');
