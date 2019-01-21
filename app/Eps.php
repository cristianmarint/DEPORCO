<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Eps extends Model
{
    protected $table = "eps";

    protected $fillable = [
      'nombre',
      'administradora',
      'tipo',
      'codigo'
    ];
}