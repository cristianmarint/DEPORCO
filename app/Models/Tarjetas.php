<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Tarjetas extends Model
{
    protected $table = "tarjetas";

    protected $fillable = [
        'nombre',
        'descripcion'
    ];
}