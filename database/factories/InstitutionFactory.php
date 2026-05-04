<?php

use App\Models\Institution;
use Faker\Generator as Faker;

$factory->define(Institution::class, function (Faker $faker) {
    return [
        'codigo_dane' => $faker->unixTime(),
        'nit' => $faker->unixTime(),
        'logo' => random_pic('public/storage/storage/img/instituto/test'),
        'nombre' => $faker->unique()->company,
        'municipio_id' => \App\Models\City::all()->random()->id,
        'tipo_educacion_id' => \App\Models\EducationType::all()->random()->id,
        'telefono_id' => factory(App\Models\Phone::class),
        'direccion_id' => \App\Models\Address::all()->random()->id,
        'user_id' => \App\User::all()->random()->id
    ];
});
