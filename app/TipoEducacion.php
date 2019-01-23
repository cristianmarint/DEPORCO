<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class TipoEducacion extends Model
{
    protected $table = "tipo_educacion";

    protected $fillable = [
      'tipo '
    ];
}