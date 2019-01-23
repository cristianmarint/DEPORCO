<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Temporada extends Model
{
    protected $table = "temporada";

    protected $fillable = [
      'descripcion',
      'fecha_inicio',
      'fecha_fin'
    ];
}