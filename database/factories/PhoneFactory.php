<?php

use App\Models\Phone;
use Faker\Generator as Faker;

$factory->define(Phone::class, function (Faker $faker) {
    $tipos = ['Celular', 'Fijo'];

    return [
        'numero' => $faker->numberBetween(31300000, 318999999),
        'tipo' => $tipos[rand(0,1)]
    ];
});
