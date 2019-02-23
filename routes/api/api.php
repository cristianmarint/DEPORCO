<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-23 07:46:51 
 * @Last Modified by:   CristianMarinT 
 * @Last Modified time: 2019-02-23 07:46:51 
 */


 
use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
