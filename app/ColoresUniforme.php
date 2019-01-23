<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class ColoresUniforme extends Model
{
    protected $table = "colores_uniforme";

    protected $fillable = [
      'color'
    ];
}