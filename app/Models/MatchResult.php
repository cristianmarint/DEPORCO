<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MatchResult extends Model
{
    protected $table = "resultado";

    use SoftDeletes;

    protected $fillable = [
        'enfrentamiento_id',
        'resultado_local',
        'resultado_visitante'
    ];

    protected function enfrentamiento(){
        return $this->belongsTo(GameMatch::class);
    }
}