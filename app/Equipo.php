<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Equipo extends model
{
    use SoftDeletes;

    protected $table = "equipo";

    protected $fillable = [
      'nombre',
      'logo',
      'instituto_id',
      'colores_id',
      'user_id'
    ];

    protected function user(){
      return $this->belongsTo(User::class);
    }

    protected function instituto(){
      return $this->belongsTo(Instituto::class);
    }

    protected function ColoresUniforme(){
      return $this->belongsTo(ColoresUniforme::class);
    }

}