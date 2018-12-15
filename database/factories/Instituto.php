<?php

use App\Instituto;
use App\User;
use App\Municipio;
use App\Direccion;
use App\Telefono;
use Faker\Generator as Faker;



$factory->define(Instituto::class, function (Faker $faker) {

    $cantidadUsers = User::count();
    $cantidadMunicipio = Municipio::count();
    $cantidadDireccion = Direccion::count();
    $cantidadTelefono = Telefono::count();

    $tipo_educacion = ['publico', 'privado'];

    return [
        'nombre_institucion' => $faker->company(),
        'usuario_id'         => rand(1,$cantidadUsers),
        'municipio_id'       => rand(1,$cantidadMunicipio), 
        'tipo_educacion'     => $tipo_educacion[rand(0,1)], 
        'direccion_id'       => rand(1,$cantidadDireccion), 
        'telefono_id'        => rand(1,$cantidadTelefono),
        'codigo_dane'        => $faker->swiftBicNumber(),
        'nit'                => $faker->swiftBicNumber(),
        'logo'               => $faker->imageUrl(),
    ];
});
