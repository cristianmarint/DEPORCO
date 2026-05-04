<?php

use App\Models\Venue;
use Faker\Generator as Faker;

$factory->define(Venue::class, function (Faker $faker) {
    return [
        'nombre' => $faker->streetName,
        'municipio_id' => \App\Models\City::all()->random()->id,
        'direccion_id' => \App\Models\Address::all()->random()->id,
        'telefono_id' => factory(App\Models\Phone::class),
        'user_id' => \App\User::all()->random()->id
    ];
});
