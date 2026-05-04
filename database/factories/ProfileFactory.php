<?php

use App\Models\Profile;
use Faker\Generator as Faker;

$factory->define(Profile::class, function (Faker $faker) {
    // $proveedores = ['https://loremflickr.com/400/400/face,woman','https://loremflickr.com/400/400/face,man','https://loremflickr.com/400/400/player,man',
    //                 'https://loremflickr.com/400/400/player,soccer','https://loremflickr.com/400/400/player,football','https://loremflickr.com/400/400/player,sport',
    //                 'https://loremflickr.com/400/400/player,tennis','https://loremflickr.com/400/400/person'
    //                ];
    // 'foto'=> $proveedores[array_rand($proveedores)],
    return [
        'cedula' => $faker->unixTime,
        'foto'=> random_pic('public/storage/storage/img/datosbasicos/test'),
        'telefono_id' => factory(App\Models\Phone::class),
        'primer_nombre' => $faker->firstName,
        'segundo_nombre' => $faker->firstName,
        'primer_apellido' => $faker->lastName,
        'segundo_apellido' => $faker->lastName,
        'tipo_sangre_id' => \App\Models\BloodType::all()->random()->id,
        'municipio_id' => \App\Models\City::all()->random()->id,
        'genero_id' => \App\Models\Gender::all()->random()->id,
        'direccion_id' => \App\Models\Address::all()->random()->id,
        'eps_id' => \App\Models\HealthProvider::all()->random()->id,
        'email' => $faker->email,
        // 'user_id' => 2
    ];
});
