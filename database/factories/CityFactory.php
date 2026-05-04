<?php

use App\Models\City;
use App\Models\State;
use Faker\Generator as Faker;

$factory->define(City::class, function (Faker $faker) {
    return [
        'nombre' => $faker->city,
        'departamento_id' => factory(App\Models\State::class)
    ];
});
