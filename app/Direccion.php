<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Direccion extends Model
{
    protected $table = 'direccion';

    protected $fillable = [
      'calle',
      'carrera',
      'numero'
    ];
}