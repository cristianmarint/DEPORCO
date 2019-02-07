<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class CalendarioAvance extends Model
{
    protected $table = "calendario_avance";

    protected $fillable = [
      'avance',
      'descripcion'
    ];
}