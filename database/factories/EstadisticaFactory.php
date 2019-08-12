<?php

use App\Models\Estadisticas;
use Faker\Generator as Faker;

$factory->define(Estadistica::class, function (Faker $faker) {
    return [
        'inscripcion_equipo_id' => \App\Models\InscripcionEquipo::all()->random()->id,
        'inscripcion_jugador_id' => \App\Models\InscripcionJugador::all()->random()->id,
        'enfrentamiento_id' => \App\Models\Enfrentamiento::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
