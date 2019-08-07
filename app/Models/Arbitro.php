<?php


namespace App\Models;

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

    protected function EnfrentamientoArbitro(){
        return $this->hasOne(EnfrentamientoArbitro::class);
    }

    protected function DatosBasicos(){
        return $this->belongsTo(DatosBasicos::class);
    }
}
