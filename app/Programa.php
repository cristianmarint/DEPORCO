<?php


namespace App;

use Illuminate\Database\Eloquent\Model;

class Programa extends Model
{
    protected $table = "programa";


    protected $fillable = [
        'id_programa',
        'programa',
        'descripcion'
    ];
}
