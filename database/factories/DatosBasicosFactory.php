<?php

use App\Models\DatosBasicos;
use Faker\Generator as Faker;

$factory->define(DatosBasicos::class, function (Faker $faker) {
    $proveedores = ['https://loremflickr.com/400/400/face,woman','https://loremflickr.com/400/400/face,man','https://loremflickr.com/400/400/player,man',
                    'https://loremflickr.com/400/400/player,soccer','https://loremflickr.com/400/400/player,football','https://loremflickr.com/400/400/player,sport',
                    'https://loremflickr.com/400/400/player,tennis','https://loremflickr.com/400/400/person'
                   ];
    return [
        'cedula' => $faker->unixTime,
        'foto'=> $proveedores[array_rand($proveedores)],
        'telefono_id' => factory(App\Models\Telefono::class),
        'primer_nombre' => $faker->firstName,
        'segundo_nombre' => $faker->firstName,
        'primer_apellido' => $faker->lastName,
        'segundo_apellido' => $faker->lastName,
        'tipo_sangre_id' => \App\Models\TipoSangre::all()->random()->id,
        'municipio_id' => \App\Models\Municipio::all()->random()->id,
        'genero_id' => \App\Models\Genero::all()->random()->id,
        'direccion_id' => \App\Models\Direccion::all()->random()->id,
        'eps_id' => \App\Models\Eps::all()->random()->id,
        'email' => $faker->email,
        // 'user_id' => 2
    ];
});
