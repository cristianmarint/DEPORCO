<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Resultado_futbol extends Model{
    protected $table = "resultado_futbol";

    protected $fillable = [
        'id_resultado_futbol',
        'enfrentamiento_id',
        'resultado_local',
        'resultado_visitante',
    ];

}
