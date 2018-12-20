<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Enfrentamiento_arbitro extends Model{

    protected $table = "enfrentamiento_arbitro";

    protected $fillable = [
        'id_enfretamiento_arbitro',
        'arbitro_id',
        'arbitro_puesto_id',
        'enfrentamiento_id',
    ];
}