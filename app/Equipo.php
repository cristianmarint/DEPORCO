<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Equipo extends model
{
    protected $table = "equipo";

    protected $fillable = [
      'nombre',
      'logo',
    ];
}