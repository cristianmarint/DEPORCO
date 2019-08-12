<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Tarjeta extends Model
{
    protected $table = "tarjeta";

    protected $fillable = [
        'nombre',
        'descripcion'
    ];
}