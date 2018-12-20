<?php


namespace App;
use Illuminate\Database\Eloquent\Model;


class Temporada extends Model
{
    protected $table = "temporada";

    protected $fillable = [
        'id_temporada',
        'numero_temporada', 
        'descripcion', 
        'estado', 
        'fecha_inicio', 
        'fecha_fin',];
}