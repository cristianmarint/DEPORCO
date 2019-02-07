<?php

use App\Enfrentamiento;
use Faker\Generator as Faker;

$factory->define(Enfrentamiento::class, function (Faker $faker) {
    return [
        'calendario_id' => \App\Calendario::all()->random()->id,
        'inscripcion_equipo_visitante_id' => \App\InscripcionEquipo::all()->random()->id,
        'inscripcion_equipo_local_id' => \App\InscripcionEquipo::all()->random()->id,
        'lugar_id' => \App\Lugar::all()->random()->id,
        'user_id' => 2
    ];
});
