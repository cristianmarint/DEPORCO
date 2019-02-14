<?php

namespace App\Models;


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

    public function colores(){
      return $this->belongsTo(Colores::class);
  }

}