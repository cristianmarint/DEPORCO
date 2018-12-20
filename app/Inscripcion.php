<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Inscripcion extends Model{
    protected $table = "inscripcion";

    protected $fillable = [
        'id_inscripcion', 
        'id_equipo', 
        'id_torneo',
        'puntos'
    ];
}