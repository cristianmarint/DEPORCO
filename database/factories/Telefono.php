<?php

use App\Telefono;
use Faker\Generator as Faker;



$factory->define(Telefono::class, function (Faker $faker) {
    $tipos = ['Celular', 'Fijo'];

    return [
        'telefono' => $faker->phoneNumber,
        'tipo' => $tipos[rand(0,1)]
    ];
});
