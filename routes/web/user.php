<?php
/*
 * Rutas autenticadas del lado de usuario.
 * Todos los identificadores y URLs en ingles; las tablas BD permanecen en espanol.
 */

Route::group(['middleware' => 'auth'], function () {

    // Dashboard principal
    Route::resource('/home', 'HomeController');
    Route::get('/home/tournament-soccer/{id}', 'HomeController@getTournamentSoccer');

    // Estadisticas agregadas por jugador
    Route::get('/playerstats', 'PlayerStatsController@index')->name('playerstats.index');
    Route::get('/playerstats/{id}', 'PlayerStatsController@getPlayer')->name('playerstats.detail');

    // Cambio de contrasena
    Route::post('/changePassword/{id}', 'ChangePasswordController@update');

    // Instituciones (centros educativos)
    Route::resource('/institutions', 'InstitutionController');
    Route::get('/institutions/cities/{id}', 'InstitutionController@getCity');

    // Equipos
    Route::resource('/teams', 'TeamController');
    Route::get('/teams/json/{id}', 'TeamController@getTeam');

    // Lugares / sedes
    Route::resource('/venues', 'VenueController');
    Route::get('/venues/json/{id}', 'VenueController@getVenue');

    // Perfil de datos basicos de personas
    Route::resource('/profiles', 'ProfileController');
    Route::get('/profiles/json/{id}', 'ProfileController@getProfile');

    // Categorias
    Route::resource('/categories', 'CategoryController');
    Route::get('/categories/json/{id}', 'CategoryController@getCategory');

    // Torneos
    Route::resource('/tournaments', 'TournamentController');
    Route::get('/tournaments/json/{id}', 'TournamentController@getTournament');

    // Temporadas
    Route::resource('/seasons', 'SeasonController');
    Route::get('/seasons/json/{id}', 'SeasonController@getSeason');

    // Enfrentamientos / partidos
    Route::resource('/matches', 'GameMatchController');
    Route::get('/matches/tournament/{id}', 'GameMatchController@getTeams');
    Route::get('/matches/schedule/{id}', 'GameMatchController@getSchedule');

    // Calendarios
    Route::resource('/schedules', 'ScheduleController');
});
