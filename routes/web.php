<?php

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

// ruta controlada por voyager para acceder al login y demas
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Auth::routes();

// Cuando la BD demorá mucho en dar respuesta, redirecciona a esta ruta,la view es innecesaria alparecer D:
// Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware'=>'auth'], function() {

    //retorna la view index desde el controlador
    Route::resource('/home', 'HomeController');

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


    // Routes inscripciones_equipo equipo
//    Route::resource('/inscripciones_equipo', 'InscripcionEquiposController');
//    Route::get('/inscripciones_equipo/torneo/{id_torneo}', 'InscripcionEquiposController@getEquipo');








//    Routes for data delete
//    Route::resource('/institutos_delete', 'Instituto_deleteController');
//    Route::resource('/equipos_delete', 'Equipo_deleteController');
//    Route::resource('/temporadas_delete', 'Temporada_deleteController');
//    Route::resource('/categorias_delete', 'Categoria_deleteController');
//    Route::resource('/torneos_delete', 'Torneo_deleteController');
//    Route::resource('/inscripciones_equipo_delete', 'InscripcionEquipos_deleteController');
});
