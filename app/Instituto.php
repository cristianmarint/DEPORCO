<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class Instituto extends Model{
    protected $table = "institutos";


//        nit y logo
    protected $fillable = [
        'id_instituto','codigo_dane', 'nombre_institucion','id_municipio', 'tipo_educacion', 'direccion', 'telefono'
    ];

//    public function municipio(){
//        return $this->belongsTo(Municipio::class, 'id_municipio');
//    }
}
