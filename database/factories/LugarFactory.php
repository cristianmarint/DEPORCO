<?php

use App\Lugar;
use Faker\Generator as Faker;

$factory->define(Lugar::class, function (Faker $faker) {
    return [
        'nombre' => $faker->streetName,
        'municipio_id' => \App\Municipio::all()->random()->id,
        'direccion_id' => \App\Direccion::all()->random()->id,
        'telefono_id' => \App\Telefono::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
