<?php


namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Calendario extends Model
{
    use SoftDeletes;

    protected $table = "calendario";


    protected $fillable = [
        'jornada',
        'fecha',
        'torneo_id',
        'fase_id',
        'user_id'
    ];


    protected function user(){
        return $this->hasOne(User::class);
    }

    public function enfrentamiento(){
        return $this->hasOne(Enfrentamiento::class);
    }
    
    protected function torneo(){
        return $this->belongsTo(Torneo::class);
    }
    
    protected function fase(){
        return $this->belongsTo(Fase::class);
    }
    
}
