<?php

use App\Models\Jugador;
use Faker\Generator as Faker;

$factory->define(Jugador::class, function (Faker $faker) {
    return [
        'nombre_acudiente' => $faker->name,
        'datos_basicos_id' => \App\Models\DatosBasicos::all()->random()->id,
        'telefono_acudiente_id' => \App\Models\Telefono::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
