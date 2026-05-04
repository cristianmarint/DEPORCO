<?php

use App\Models\TeamRegistration;
use Faker\Generator as Faker;

$factory->define(TeamRegistration::class, function (Faker $faker) {
    return [
        'equipo_id' => factory(App\Models\Team::class),
        // 'torneo_id' => \App\Models\Tournament::all()->random()->id,
        'torneo_id' => '1',
    ];
});
