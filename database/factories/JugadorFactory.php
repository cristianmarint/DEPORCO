<?php

use App\Jugador;
use Faker\Generator as Faker;

$factory->define(Jugador::class, function (Faker $faker) {
    return [
        'nombre_acudiente' => $faker->name,
        'datos_basicos_id' => \App\DatosBasicos::all()->random()->id,
        'telefono_acudiente_id' => \App\Telefono::all()->random()->id,
        'user_id' => 2
    ];
});
