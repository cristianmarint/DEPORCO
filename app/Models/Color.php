<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Color extends Model
{
    use SoftDeletes;

    protected $table = "color";

    protected $fillable = [
      'nombre'
    ];

    protected function equipo(){
      return $this->hasOne('Equipo');
  }
}