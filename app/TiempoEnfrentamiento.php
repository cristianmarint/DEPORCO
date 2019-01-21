<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class TiempoEnfrentamiento extends Model
{
    protected $table = "tiempo_enfrentamiento";

    protected $fillable = [
      'tiempo'
    ];


}