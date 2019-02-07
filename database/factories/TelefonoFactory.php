<?php

use App\Models\Telefono;
use Faker\Generator as Faker;

$factory->define(Telefono::class, function (Faker $faker) {
    $tipos = ['Celular', 'Fijo'];

    return [
        'numero' => $faker->numberBetween(31300000, 318999999),
        'tipo' => $tipos[rand(0,1)]
    ];
});
