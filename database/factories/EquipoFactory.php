<?php

use App\Models\Equipo;
use Faker\Generator as Faker;

$factory->define(Equipo::class, function (Faker $faker) {
    return [
        'nombre' => $faker->streetName,
        'instituto_id' => \App\Models\Instituto::all()->random()->id,
        'colores_id' => \App\Models\Colores::all()->random()->id,
        'user_id' => 2
    ];
});
