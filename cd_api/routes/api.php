<?php

use Illuminate\Http\Request;
//use Illuminate\Routing\Router;

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
/*
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/

Route::middleware(['cors', 'bindings'])->group(function () {
   	
	Route::POST('/user/l', 'UserController@login');
	Route::resource('/user', 'UserController');

	Route::resource('/profesor', 'ProfesorController');
	Route::GET('/profesor/l/{id}', 'ProfesorController@electivas');

	Route::resource('/electiva', 'ElectivaController');
	
	Route::resource('/perfiles', 'PerfilController');
	Route::resource('/electiva_usuario', 'ElectivaUsuarioController');
	Route::get('/electiva_usuario/eu/{id}', 'ElectivaUsuarioController@show');	

});