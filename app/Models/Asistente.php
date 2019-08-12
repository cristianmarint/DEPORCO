<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Asistente extends Model
{
    use SoftDeletes;

    protected $table = "asistente";

    protected $fillable = [
        'puesto',
    ];

    public function AsistenteEquipo()
    {
        return $this->hasOne('AsistenteEquipo');
    }

    public function AsistenteLicencia()
    {
        return $this->hasMany('AsistenteLicencia');
    }
}
