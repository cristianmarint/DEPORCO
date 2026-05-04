<?php

use App\Models\Referee;
use Faker\Generator as Faker;

$factory->define(Referee::class, function (Faker $faker) {
    return [
        'datos_basicos_id' => \App\Models\Profile::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
