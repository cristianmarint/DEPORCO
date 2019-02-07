<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Temporada extends Model
{
    use SoftDeletes;

    protected $table = "temporada";

    protected $fillable = [
      'descripcion',
      'fecha_inicio',
      'fecha_fin'
    ];

    public function torneo(){
      return $this->hasMany(Torneo::class);
  }
}