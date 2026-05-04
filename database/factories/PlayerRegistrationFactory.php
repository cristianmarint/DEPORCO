<?php

use App\Models\PlayerRegistration;
use Faker\Generator as Faker;

$factory->define(PlayerRegistration::class, function (Faker $faker) {
    return [
        'jugador_id' => factory(App\Models\Player::class),
        'inscripcion_equipo_id' =>  \App\Models\TeamRegistration::all()->random()->id,
        'programa_id' => \App\Models\Program::all()->random()->id,
        'tipo_jugador_id' => \App\Models\PlayerType::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
