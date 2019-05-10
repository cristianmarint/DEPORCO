<?php
/*
 * @Author: EdwinLopez12 
 * @Date: 2019-02-23 07:47:41 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-10 14:01:57
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

Route::get('/',       'DeporcoController@welcome')->name('deporco.welcome');
Route::get('/contact','DeporcoController@contact')->name('deporco.contact');
Route::get('/about',  'DeporcoController@about')  ->name('deporco.about');
Route::get('/media',  'DeporcoController@media')  ->name('deporco.media');
Route::get('/faq',    'DeporcoController@faq')    ->name('deporco.faq');
Route::get('/rules',  'DeporcoController@rules')  ->name('deporco.rules');
Route::get('/terms',  'DeporcoController@terms')  ->name('deporco.terms');

// Social login routes ...
Route::group(
    ['prefix' => 'oauth', 'as' => 'oauth.', 'middleware' => ['guest', 'throttle']], function () {

        Route::get('/{provider}', 'Auth\SocialiteController@redirectToProvider')->name('login')->where('provider', 'google|github');
        Route::get('/{provider}/callback', 'Auth\SocialiteController@handleProviderCallback')->where('provider', 'google|github');
}); 