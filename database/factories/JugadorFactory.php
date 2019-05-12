<?php

use App\Models\Jugador;
use Faker\Generator as Faker;

$factory->define(Jugador::class, function (Faker $faker) {
    return [
        'nombre_acudiente' => $faker->name,
        'datos_basicos_id' => factory(App\Models\DatosBasicos::class),
        'telefono_acudiente_id' => factory(App\Models\Telefono::class),
        'user_id' => \App\User::all()->random()->id
    ];
});
