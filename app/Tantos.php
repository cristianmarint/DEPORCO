<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Tantos extends Model
{
    protected $table = "tantos";

    protected $fillable = [
      'minuto'
    ];
}