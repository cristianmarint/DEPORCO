<?php


namespace App;

use Illuminate\Database\Eloquent\Model;

class Arbitro extends Model
{
    protected $table = "arbitro";


    protected $fillable = [
        'datos_basicos_id',
        'user_id'
    ];
}
