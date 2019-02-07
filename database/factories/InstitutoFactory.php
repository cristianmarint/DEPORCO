<?php

use App\Instituto;
use Faker\Generator as Faker;

$factory->define(Instituto::class, function (Faker $faker) {
    return [
        'codigo_dane' => $faker->unixTime(),
        'nit' => $faker->unixTime(),
        'nombre' => $faker->company,
        'municipio_id' => \App\Municipio::all()->random()->id,
        'tipo_educacion_id' => \App\TipoEducacion::all()->random()->id,
        'telefono_id' => \App\Telefono::all()->random()->id,
        'direccion_id' => \App\Direccion::all()->random()->id,
        'user_id' => 2,
    ];
});
