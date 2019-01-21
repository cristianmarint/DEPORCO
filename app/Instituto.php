<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Instituto extends Model
{
    protected $table = "instituto";

    protected $fillable = [
      'codigo_dane',
      'nit',
      'nombre',
    ];
}