<?php


namespace App;

use Illuminate\Database\Eloquent\Model;

class Calendario extends Model
{
    protected $table = "calendario";


    protected $fillable = [
        'id_calendario',
        'torneo_id', 
        'avance_id',
        'numero_jornada',
        'estado'
    ];
}
