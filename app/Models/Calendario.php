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

    public function enfrentamiento(){
        return $this->hasMany('Enfrentamiento');
    }

    protected function user(){
        return $this->belongsTo(User::class);
    }
    
    protected function torneo(){
        return $this->belongsTo('Torneo');
    }
    
    protected function fase(){
        return $this->belongsTo('Fase');
    }    
}
