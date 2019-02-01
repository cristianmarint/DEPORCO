<?php

use App\DatosBasicos;
use Faker\Generator as Faker;

$factory->define(DatosBasicos::class, function (Faker $faker) {
    return [
        'cedula' => $faker->unixTime,
        'telefono_id' => \App\Telefono::all()->random()->id,
        'primer_nombre' => $faker->firstName,
        'segundo_nombre' => $faker->firstName,
        'primer_apellido' => $faker->lastName,
        'segundo_apellido' => $faker->lastName,
        'tipo_sangre_id' => \App\TipoSangre::all()->random()->id,
        'municipio_id' => \App\Municipio::all()->random()->id,
        'genero_id' => \App\Genero::all()->random()->id,
        'direccion_id' => \App\Direccion::all()->random()->id,
        'eps_id' => \App\Eps::all()->random()->id,
        'email' => $faker->email,
    ];
});
