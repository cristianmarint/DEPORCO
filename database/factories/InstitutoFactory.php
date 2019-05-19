<?php

use App\Models\Instituto;
use Faker\Generator as Faker;

$factory->define(Instituto::class, function (Faker $faker) {
    return [
        'codigo_dane' => $faker->unixTime(),
        'nit' => $faker->unixTime(),
        'logo' => random_pic('public/storage/storage/img/instituto/test'),
        'nombre' => $faker->unique()->company,
        'municipio_id' => \App\Models\Municipio::all()->random()->id,
        'tipo_educacion_id' => \App\Models\TipoEducacion::all()->random()->id,
        'telefono_id' => factory(App\Models\Telefono::class),
        'direccion_id' => \App\Models\Direccion::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
