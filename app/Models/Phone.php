<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Phone extends Model
{
    use SoftDeletes;

    protected $table = "telefono";

    protected $fillable = [
        'numero',
        'tipo'
    ];

    protected function instituto(){
        return $this->hasOne(Institution::class, 'telefono_id');
    }
    protected function lugar(){
        return $this->hasOne(Venue::class, 'telefono_id');
    }
    protected function datosbasicos(){
        return $this->hasOne(Profile::class, 'telefono_id');
    }
    protected function telefono(){
        return $this->hasOne(Phone::class, 'telefono_id');
    }

}
