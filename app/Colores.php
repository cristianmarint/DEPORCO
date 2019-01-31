<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Colores extends Model
{
    use SoftDeletes;

    protected $table = "colores";

    protected $fillable = [
      'color'
    ];

    protected function equipo(){
      return $this->hasOne(Equipo::class);
  }
}