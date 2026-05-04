<?php

use App\Models\Schedule;
use Faker\Generator as Faker;

$factory->define(Schedule::class, function (Faker $faker) {
    return [
        'jornada' => $faker->numberBetween(1,50),
        'fecha' => $faker->date(),
        'torneo_id' => \App\Models\Tournament::all()->random()->id,
        'fase_id' => \App\Models\Phase::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
