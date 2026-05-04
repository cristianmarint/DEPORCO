<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Category extends Model
{
    use SoftDeletes;

    protected $table = "categoria";

    protected $fillable = [
        'nombre',
        'descripcion'
    ];

    public function TarjetaCategoria(){
        return $this->hasMany(CardCategory::class, 'categoria_id');
    }

    public function torneo(){
        return $this->hasMany(Tournament::class, 'categoria_id');
    }
}