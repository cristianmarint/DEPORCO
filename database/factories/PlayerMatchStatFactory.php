<?php

use App\Models\Estadisticas;
use Faker\Generator as Faker;

$factory->define(PlayerMatchStat::class, function (Faker $faker) {
    return [
        'inscripcion_equipo_id' => \App\Models\TeamRegistration::all()->random()->id,
        'inscripcion_jugador_id' => \App\Models\PlayerRegistration::all()->random()->id,
        'enfrentamiento_id' => \App\Models\GameMatch::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
