<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class EnfrentamientoArbitro extends Model
{
    use SoftDeletes;

    protected $table = "enfrentamiento_arbitro";

    protected $fillable = [
        'arbitro_id',
        'arbitro_puesto_id',
        'enfrentamiento_id',
        'user_id'
    ];

    protected function arbitro(){
        return $this->belongsTo(Arbitro::class);
    }
}