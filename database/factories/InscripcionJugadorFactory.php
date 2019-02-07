<?php

use App\Models\InscripcionJugador;
use Faker\Generator as Faker;

$factory->define(InscripcionJugador::class, function (Faker $faker) {
    return [
        'jugador_id' => \App\Models\Jugador::all()->random()->id,
        'inscripcion_equipo_id' => \App\Models\InscripcionEquipo::all()->random()->id,
        'programa_id' => \App\Models\Programa::all()->random()->id,
        'tipo_jugador_id' => \App\Models\TipoJugador::all()->random()->id,
        'user_id' => 2
    ];
});
