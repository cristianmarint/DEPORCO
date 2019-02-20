<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Fase extends Model
{
    protected $table = "fase";

    protected $fillable = [
      'nombre',
      'descripcion'
    ];
}