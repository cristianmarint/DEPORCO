<?php

use App\Telefono;
use Faker\Generator as Faker;

$factory->define(Telefono::class, function (Faker $faker) {
    $tipos = ['Celular', 'Fijo'];

    return [
        'numero' => $faker->numberBetween(1000000000, 2147483647),
        'tipo' => $tipos[rand(0,1)]
    ];
});
