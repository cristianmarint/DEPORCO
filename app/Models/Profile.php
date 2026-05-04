<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Profile extends Model
{
    use SoftDeletes;

    protected $table = "datos_basicos";

    protected $fillable = [
      'cedula',
      'foto',
      'primer_nombre',
      'segundo_nombre',
      'primer_apellido',
      'segundo_apellido',
      'tipo_sangre_id',
      'municipio_id',
      'genero_id',
      'direccion_id',
      'telefono_id',
      'eps_id',
      'email',
    ];

    protected function user(){
        return $this->hasOne(User::class, 'datos_basicos_id');
    }

    public function arbitro(){
        return $this->hasOne(Referee::class, 'datos_basicos_id');
    }

    public function telefono(){
        return $this->belongsTo(Phone::class, 'telefono_id');
    }
    
    public function municipio(){
        return $this->belongsTo(City::class, 'municipio_id');
    }
    
    public function direccion(){
        return $this->belongsTo(Address::class, 'direccion_id');
    }
    public function tipo_sangre(){
        return $this->belongsTo(BloodType::class, 'tipo_sangre_id');
    }
    public function genero(){
        return $this->belongsTo(Gender::class, 'genero_id');
    }
    public function eps(){
        return $this->belongsTo(HealthProvider::class, 'eps_id');
    }
    public function jugador(){
        return $this->hasOne(Player::class, 'datos_basicos_id');
    }
}