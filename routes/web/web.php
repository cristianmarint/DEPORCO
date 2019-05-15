<?php
/*
 * @Author: EdwinLopez12 
 * @Date: 2019-02-23 07:47:41 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-02-23 14:05:01
 */

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
Auth::routes(['verify' => true]);

Route::get('/', function () {
    return view('welcome');
})->name('welcome');







// Cuando la BD demorá mucho en dar respuesta, redirecciona a esta ruta,la view es innecesaria alparecer D:
// Route::get('/home', 'HomeController@index')->name('home');


// Social login routes ...
Route::group(
    ['prefix' => 'oauth', 'as' => 'oauth.', 'middleware' => ['guest', 'throttle']], function () {

        Route::get('/{provider}', 'Auth\SocialiteController@redirectToProvider')->name('login')->where('provider', 'google|github');
        Route::get('/{provider}/callback', 'Auth\SocialiteController@handleProviderCallback')->where('provider', 'google|github');
}); 