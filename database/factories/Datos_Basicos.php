<?php

use App\Datos_Basicos;
use App\Telefono;
use App\Sangre;
use App\Municipio;
use App\Sexo;
use App\Direccion;
use App\Eps;
use Faker\Generator as Faker;



$factory->define(Datos_Basicos::class, function (Faker $faker) {

    $cantidadTelefono  = Telefono::count();
    $cantidadSangre    = Sangre::count();
    $cantidadMunicipio = Municipio::count();
    $cantidadSexo      = Sexo::count();
    $cantidadDireccion = Direccion::count();
    $cantidadEps       = Eps::count();

    return [
        'cedula'         => $faker->unique()->randomNumber($nbDigits=9),
        'telefono_id'    => rand(1,$cantidadTelefono),
        'primer_nombre'  => $faker->firstName(),
        'segundo_nombre'  => $faker->lastName(),
        'primer_apellido' => $faker->firstName(),
        'segundo_apellido'=> $faker->lastName(),
        'sangre_id'       => rand(1,$cantidadSangre),
        'municipio_id'    => rand(1,$cantidadMunicipio),
        'sexo_id'         => rand(1,$cantidadSexo),
        'direccion_id'    => rand(1,$cantidadDireccion),
        'eps_id'          => rand(1,$cantidadEps),
        'email'           => $faker->freeEmail()
    ];
});
