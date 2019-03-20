<?php

namespace App\Models;

use App\User;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Fase extends Model
{
    use SoftDeletes;

    protected $table = "fase";

    protected $fillable = [
      'nombre',
      'descripcion'
    ];

  protected function calendario(){
    return $this->hasOne(Calendario::class);
  }
}