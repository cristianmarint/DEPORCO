<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Staff extends Model
{
    use SoftDeletes;

    protected $table = "asistente";

    protected $fillable = [
        'puesto',
    ];

    public function asistenteInscripcionEquipo()
    {
        return $this->hasOne(StaffTeamRegistration::class, 'asistente_id');
    }

    public function asistenteLicencia()
    {
        return $this->hasMany(StaffLicense::class, 'asistente_id');
    }
}
