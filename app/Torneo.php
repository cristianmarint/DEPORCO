<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Torneo extends Model{

    protected $table = "torneo";

    protected $fillable = [
        'id_torneo',
        'nombre_torneo', 
        'id_categoria', 
        'id_temporada'
    ];
}