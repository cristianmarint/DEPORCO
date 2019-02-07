<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InscripcionEquipo extends Model{
    protected $table = "inscripcion_equipo";

    protected $fillable = [
        'puntos'
    ];
}