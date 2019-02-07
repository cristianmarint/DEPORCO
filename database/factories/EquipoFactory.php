<?php

use App\Equipo;
use Faker\Generator as Faker;

$factory->define(Equipo::class, function (Faker $faker) {
    return [
        'nombre' => $faker->streetName,
        'instituto_id' => \App\Instituto::all()->random()->id,
        'colores_id' => \App\Colores::all()->random()->id,
        'user_id' => 2
    ];
});
