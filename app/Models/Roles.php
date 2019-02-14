<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Colores extends Model
{
    use SoftDeletes;

    protected $table = "colores";

    protected $fillable = [
      'name',
      'display_name'
    ];

    protected function user(){
      return $this->hasOne(User::class);
  }
}