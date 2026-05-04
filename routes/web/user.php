<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-23 07:47:10 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-16 22:53:41
 */

// permite el login pero no el acceso a las rutas del grupo
// Route::group(['middleware'=>'admin.user'], function() {

Route::group(['middleware'=>'auth'], function() {

    //retorna la view index desde el controlador
    Route::resource('/home', 'HomeController');
    Route::get('/home/torneo_futbol/{id}','HomeController@getTorneofutbol');

    // Estadisticas por jugador
    Route::get('/estadisticasjugador', 'PlayerStatsController@index')->name('estadisticasjugador.index');
    Route::get('/estadisticasjugador/{id}', 'PlayerStatsController@getJugador')->name('estadisticasjugador.detalle');

    //Desactiva la ruta de /register.
    // Route::resource('/register', 'Auth\LoginController@showLoginForm');

    Route::post('/changePassword/{id}', 'ChangePasswordController@update');

    // Routes Institution
    Route::resource('/institutos', 'InstitutionController');
    Route::get('/institutos/municipios/{id}', 'InstitutionController@getMunicipio');
    
    // Routes equipos
    Route::resource('/equipos', 'TeamController');
    Route::get('/equipos/{id}', 'TeamController@getEquipo');

    // Routes equipos
    Route::resource('/lugares', 'VenueController');
    Route::get('/lugares/{id}', 'VenueController@getLugar');

    // Routes datos basicos
    Route::resource('/datosbasicos', 'ProfileController');
    Route::get('/datosbasicos/{id}', 'ProfileController@getDatosBasicos');
    
    // Routes categorias
    Route::resource('/categorias', 'CategoryController');
    Route::get('/categorias/{id}', 'CategoryController@getCategoria');
    
    // Routes torneo
    Route::resource('/torneos', 'TournamentController');
    Route::get('/torneos/{id}', 'TournamentController@getTorneo');
    
    // Routes temporadas
    Route::resource('/temporadas', 'SeasonController');
    Route::get('/temporadas/{id}', 'SeasonController@getTemporada');

    // Routes enfrentamientos
    Route::resource('/enfrentamientos', 'GameMatchController');
    Route::get('/enfrentamientos/torneo/{id}', 'GameMatchController@getEquipos');
    Route::get('/enfrentamientos/calendario/{id}', 'GameMatchController@getCalendario');
    
    //Routes Calendario
    Route::resource('/calendarios', 'ScheduleController');
});