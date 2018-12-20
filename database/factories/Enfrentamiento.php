<?php

use App\Enfrentamiento;
use App\Calendario;
use App\Lugar;
use App\User;
use App\Inscripcion;
use Faker\Generator as Faker;



$factory->define(Enfrentamiento::class, function (Faker $faker) {

    $cantidadCalendario = Calendario::count();
    $cantidadInscripcionEquipo = Inscripcion::count();
    $cantidadLugar = Lugar::count();
    $cantidadUsers = User::count();

    return [
        'calendario_id'       => rand(1,$cantidadCalendario),
        'inscripcion_equipo_local_id'        => rand(1,$cantidadInscripcionEquipo),
        'inscripcion_equipo_visitante_id'=> rand(1,$cantidadInscripcionEquipo),
        'lugar_id'          => rand(1,$cantidadLugar),
        'usuario_id'         => rand(1,$cantidadUsers),
    ];
});
