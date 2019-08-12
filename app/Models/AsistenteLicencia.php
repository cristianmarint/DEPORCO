<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class AsistenteLicencia extends Model
{
    use SoftDeletes;

    protected $table = "asistente_inscripcion_equipo";

    protected $fillable = [
        'tipo',
        'numero',
    ];

    public function Asistente()
    {
        return $this->belongsTo('Asistente');
    }
}