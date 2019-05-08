<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Resultado extends Model
{
    protected $table = "resultado";

    use SoftDeletes;

    protected $fillable = [
        'enfrentamiento_id',
        'resultado_local',
        'resultado_visitante'
    ];

    protected function enfrentamiento(){
        return $this->belongsTo(Enfrentamiento::class);
    }
}