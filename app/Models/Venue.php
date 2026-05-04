<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Venue extends Model
{
    use SoftDeletes;

    protected $table = "lugar";

    protected $fillable = [
        'nombre',
        'municipio_id',
        'telefono_id',
        'direccion_id',
        'user_id'
    ];
    
    protected function user(){
        return $this->hasOne(User::class, 'lugar_id');
    }

    protected function municipio(){
        return $this->belongsTo(City::class, 'municipio_id');
    }

    public function telefono(){
        return $this->belongsTo(Phone::class, 'telefono_id');
    }
    
    public function direccion(){
        return $this->belongsTo(Address::class, 'direccion_id');
    }
    
    public function enfrentamiento(){
        return $this->hasOne(GameMatch::class, 'lugar_id');
    }
}
