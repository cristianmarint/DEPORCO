<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Categoria extends Model
{
    use SoftDeletes;

    protected $table = "categoria";

    protected $fillable = [
        'nombre',
        'descripcion'
    ];

    public function TarjetaCategoria(){
        return $this->hasMany(TarjetaCategoria::class);
    }

    public function torneo(){
        return $this->hasMany(Torneo::class);
    }
}