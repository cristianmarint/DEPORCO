<?php

use App\Models\Enfrentamiento;
use Faker\Generator as Faker;

$factory->define(Enfrentamiento::class, function (Faker $faker) {
    return [
        'calendario_id' => \App\Models\Calendario::all()->random()->id,
        'inscripcion_equipo_visitante_id' => \App\Models\InscripcionEquipo::all()->random()->id,
        'inscripcion_equipo_local_id' => \App\Models\InscripcionEquipo::all()->random()->id,
        'lugar_id' => \App\Models\Lugar::all()->random()->id,
        'user_id' => 2
    ];
});
