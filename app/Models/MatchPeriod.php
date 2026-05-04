<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class MatchPeriod extends Model
{
    protected $table = "tiempo_enfrentamiento";

    protected $fillable = [
      'tiempo'
    ];


}