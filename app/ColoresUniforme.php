<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ColoresUniforme extends Model
{
    use SoftDeletes;

    protected $table = "colores_uniforme";

    protected $fillable = [
      'color'
    ];

    protected function ColoresUniforme(){
      return $this->hasMany(ColoresUniforme::class);
    } 
}