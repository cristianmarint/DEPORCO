<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StaffTeamRegistration extends Model
{
    use SoftDeletes;

    protected $table = "asistente_inscripcion_equipo";

    protected $fillable = [];

    public function asistente()
    {
        return $this->belongsTo(Staff::class);
    }

    public function inscripcionEquipo()
    {
        return $this->belongsTo(TeamRegistration::class);
    }
}
