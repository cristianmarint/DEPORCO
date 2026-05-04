<?php

use App\Models\State;
use Faker\Generator as Faker;

$factory->define(State::class, function (Faker $faker) {

    return [
        'nombre' => $faker->state
    ];
});
