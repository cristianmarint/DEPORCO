<?php


namespace App;

use Illuminate\Database\Eloquent\Model;

class Arbitro_puesto extends Model
{
    protected $table = "arbitro_puesto";


    protected $fillable = [
        'id_arbitro_puesto',
        'puesto',
        'descripcion'
    ];
}
