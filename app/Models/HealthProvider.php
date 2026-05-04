<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class HealthProvider extends Model
{
    use SoftDeletes;

    protected $table = "eps";

    protected $fillable = [
      'nombre',
      'administradora',
      'tipo',
      'codigo'
    ];

    protected function datosbasicos(){
      return $this->hasMany(Profile::class);
  }
}