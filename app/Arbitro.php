<?php


namespace App;

use Illuminate\Database\Eloquent\Model;

class Arbitro extends Model
{
    protected $table = "arbitro";


    protected $fillable = [
        'id_arbitro',
        'datos_basicos_id'
    ];
}
