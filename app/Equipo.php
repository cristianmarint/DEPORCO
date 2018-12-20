<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class Equipo extends Model{
    protected $table = "equipos";

    protected $fillable = [
        'nombre_equipo', 
        'logo', 
        'colores_uniforme', 
        'id_instituto'
    ];
}