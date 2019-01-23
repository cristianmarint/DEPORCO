<?php

use App\InscripcionJugador;
use Faker\Generator as Faker;

$factory->define(InscripcionJugador::class, function (Faker $faker) {
    return [
        'jugador_id' => \App\Jugador::all()->random()->id,
        'inscripcion_equipo_id' => \App\InscripcionEquipo::all()->random()->id,
        'programa_id' => \App\Programa::all()->random()->id,
        'tipo_jugador_id' => \App\TipoJugador::all()->random()->id,
        'user_id' => 2
    ];
});
