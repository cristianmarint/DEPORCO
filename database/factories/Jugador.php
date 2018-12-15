<?php

use App\Jugador;
use App\User;
use App\Datos_Basicos;
use App\Telefono;
use Faker\Generator as Faker;



$factory->define(Jugador::class, function (Faker $faker) {

    $cantidadUser    = User::count();
    $cantidadDatos_Basicos = Datos_Basicos::count();
    $cantidadTelefono  = Telefono::count();

    return [
        'usuario_id'                 => rand(1,($cantidadUser-1)),//-1 ya que el ultimo usuario es el tronco :v
        'datos_basicos_id'           => rand(1,$cantidadDatos_Basicos),
        'telefono_acudiente_id'      => rand(1,$cantidadTelefono),
        'nombre_completo_acudiente'  => $faker->name(),
    ];
});
