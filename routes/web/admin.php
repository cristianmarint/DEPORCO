<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-23 07:47:31 
 * @Last Modified by:   CristianMarinT 
 * @Last Modified time: 2019-02-23 07:47:31 
 */

// ruta controlada por voyager para acceder al admin/login y demas
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});