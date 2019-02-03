<?php

use App\DatosBasicos;
use Faker\Generator as Faker;

$factory->define(DatosBasicos::class, function (Faker $faker) {
    $proveedores = ['https://loremflickr.com/400/400/face,woman','https://loremflickr.com/400/400/face,man','https://loremflickr.com/400/400/player,man',
                    'https://loremflickr.com/400/400/player,soccer','https://loremflickr.com/400/400/player,football','https://loremflickr.com/400/400/player,sport',
                    'https://loremflickr.com/400/400/player,tennis','https://loremflickr.com/400/400/person'
                   ];
    return [
        'cedula' => $faker->unixTime,
        'foto'=> $proveedores[array_rand($proveedores)],
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
