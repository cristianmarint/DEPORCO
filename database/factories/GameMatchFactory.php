<?php

use App\Models\GameMatch;
use Faker\Generator as Faker;

$factory->define(GameMatch::class, function (Faker $faker) {
    return [
        'calendario_id' => factory(App\Models\Schedule::class),
        'inscripcion_equipo_visitante_id' => \App\Models\TeamRegistration::all()->random()->id,
        'inscripcion_equipo_local_id' => \App\Models\TeamRegistration::all()->random()->id,
        'lugar_id' => \App\Models\Venue::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
