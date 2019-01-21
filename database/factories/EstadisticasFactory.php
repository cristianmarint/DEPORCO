<?php

use App\Estadisticas;
use Faker\Generator as Faker;

$factory->define(Estadisticas::class, function (Faker $faker) {
    return [
        'inscripcion_equipo_id' => \App\InscripcionEquipo::all()->random()->id,
        'inscripcion_jugador_id' => \App\InscripcionJugador::all()->random()->id,
        'enfrentamiento_id' => \App\Enfrentamiento::all()->random()->id,
        'user_id' => 2
    ];
});
