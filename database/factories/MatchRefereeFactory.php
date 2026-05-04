<?php

use App\Models\MatchReferee;
use Faker\Generator as Faker;

$factory->define(MatchReferee::class, function (Faker $faker) {
    return [
        'arbitro_id' => factory(App\Models\Referee::class),
        'arbitro_puesto_id' => \App\Models\RefereePosition::all()->random()->id,
        'enfrentamiento_id' => \App\Models\GameMatch::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
