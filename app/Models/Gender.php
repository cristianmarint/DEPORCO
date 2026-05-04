<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Gender extends Model
{
    use SoftDeletes;

    protected $table = "genero";

    protected $fillable = [
      'genero'
    ];

    protected function datosbasicos(){
      return $this->hasMany(Profile::class, 'genero_id');
  }
}