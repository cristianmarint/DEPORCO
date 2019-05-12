<?php

use App\Models\Lugar;
use Faker\Generator as Faker;

$factory->define(Lugar::class, function (Faker $faker) {
    return [
        'nombre' => $faker->streetName,
        'municipio_id' => \App\Models\Municipio::all()->random()->id,
        'direccion_id' => \App\Models\Direccion::all()->random()->id,
        'telefono_id' => factory(App\Models\Telefono::class),
        'user_id' => \App\User::all()->random()->id
    ];
});
