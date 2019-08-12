<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AsistenteInscripcionEquipo extends Model
{
    use SoftDeletes;

    protected $table = "asistente_inscripcion_equipo";

    protected $fillable = [];

    public function Asistente()
    {
        return $this->belongsTo('Asistente');
    }

    public function AsistenteLicencia()
    {
        return $this->belongsTo('InscripcionEquipo');
    }
}
