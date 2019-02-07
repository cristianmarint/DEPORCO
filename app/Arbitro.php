<?php


namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Arbitro extends Model
{
    use SoftDeletes;

    protected $table = "arbitro";


    protected $fillable = [
        'datos_basicos_id',
        'user_id'
    ];

    protected function datos_basicos(){
        return $this->belongsTo(DatosBasicos::class);
    }

    protected function enfretamiento_arbitro(){
        return $this->hasOne(EnfrentamientoArbitro::class);
    }
}
