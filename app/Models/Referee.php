<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Referee extends Model
{
    use SoftDeletes;

    protected $table = "arbitro";


    protected $fillable = [
        'datos_basicos_id',
        'user_id'
    ];

    protected function EnfrentamientoArbitro(){
        return $this->hasOne(MatchReferee::class, 'arbitro_id');
    }

    protected function DatosBasicos(){
        return $this->belongsTo(Profile::class, 'datos_basicos_id');
    }
}
