<?php


namespace App;
use Illuminate\Database\Eloquent\Model;


class Lugar extends Model
{
    protected $table = "lugar";

    protected $fillable = [
        'id_lugar',
        'nombre',
        'estado', 
        'telefono_id',
        'municipio_id', 
        'direccion_id',
    ];
}