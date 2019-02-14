<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Lugar extends Model
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

    protected function municipio(){
        return $this->belongsTO(Municipio::class);
    }

    public function telefono(){
        return $this->belongsTo(Telefono::class);
    }
    
    public function direccion(){
        return $this->belongsTo(Direccion::class);
    }
}
