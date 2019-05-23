<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-23 07:47:10 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-07 18:09:40
 */

Route::get('/estadisticasjugador', function () {
    Route::resource('/estadisticasjugador', 'EstadisticasJugadorController');
    Route::get('/estadisticasjugador/{id}', 'EstadisticasJugadorController@getJugador');
});


// permite el login pero no el acceso a las rutas del grupo
// Route::group(['middleware'=>'admin.user'], function() {
    
Route::group(['middleware'=>'auth'], function() {

    //retorna la view index desde el controlador
    Route::resource('/home', 'HomeController');

    //Desactiva la ruta de /register.
    // Route::resource('/register', 'Auth\LoginController@showLoginForm');

    Route::post('/changePassword/{id}', 'ChangePasswordController@update');

    // Routes Institution
    Route::resource('/institutos', 'InstitutoController');
    Route::get('/institutos/municipios/{id}', 'InstitutoController@getMunicipio');
    
    // Routes equipos
    Route::resource('/equipos', 'EquipoController');
    Route::get('/equipos/{id}', 'EquipoController@getEquipo');

    // Routes equipos
    Route::resource('/lugares', 'LugarController');
    Route::get('/lugares/{id}', 'LugarController@getLugar');

    // Routes datos basicos
    Route::resource('/datosbasicos', 'DatosBasicosController');
    Route::get('/datosbasicos/{id}', 'DatosBasicosController@getDatosBasicos');
    
    // Routes categorias
    Route::resource('/categorias', 'CategoriaController');
    Route::get('/categorias/{id}', 'CategoriaController@getCategoria');
    
    // Routes torneo
    Route::resource('/torneos', 'TorneoController');
    Route::get('/torneos/{id}', 'TorneoController@getTorneo');
    
    // Routes temporadas
    Route::resource('/temporadas', 'TemporadaController');
    Route::get('/temporadas/{id}', 'TemporadaController@getTemporada');

    // Routes enfrentamientos
    Route::resource('/enfrentamientos', 'EnfrentamientoController');
    Route::get('/enfrentamientos/torneo/{id}', 'EnfrentamientoController@getEquipos');
    Route::get('/enfrentamientos/calendario/{id}', 'EnfrentamientoController@getCalendario');
    
    //Routes Calendario
    Route::resource('/calendarios', 'CalendarioController');
});
