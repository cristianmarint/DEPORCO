<?php
/**
 * Created by PhpStorm.
 * User: edwin
 * Date: 9/01/2019
 * Time: 11:45 AM
 */

namespace App;


use Illuminate\Database\Eloquent\Model;

class Tarjetas extends Model
{
    protected $table = "tarjetas";

    protected $fillable = [
        'nombre',
        'descripcion'
    ];
}