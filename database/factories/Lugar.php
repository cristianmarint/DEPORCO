<?php

use App\Lugar;
use App\Telefono;
use App\Municipio;
use App\Direccion;
use Faker\Generator as Faker;



$factory->define(Lugar::class, function (Faker $faker) {
    
    $cantidadMunicipio = Municipio::count();
    $cantidadDireccion = Direccion::count();
    $cantidadTelefono = Telefono::count();

    return [
        'nombre'       => $faker->company(),
        'telefono_id'  => rand(1,$cantidadTelefono),
        'municipio_id'        => rand(1,$cantidadMunicipio),
        'direccion_id'        => rand(1,$cantidadDireccion)
    ];
});
