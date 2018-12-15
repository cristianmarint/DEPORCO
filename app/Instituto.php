<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class Instituto extends Model{
    protected $table = "institutos";


//        nit y logo
    protected $fillable = [
        'id_instituto',
        'nombre_institucion', 
        'usuario_id',
        'municipio_id', 
        'tipo_educacion', 
        'direccion_id', 
        'telefono_id',
        'codigo_dane',
        'nit',
        'logo',
    ];

//    public function municipio(){
//        return $this->belongsTo(Municipio::class, 'id_municipio');
//    }
}
