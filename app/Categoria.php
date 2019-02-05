<?php
/**
 * Created by PhpStorm.
 * User: edwin
 * Date: 9/01/2019
 * Time: 11:51 AM
 */

namespace App;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Categoria extends Model
{
    use SoftDeletes;

    protected $table = "categoria";

    protected $fillable = [
        'descripcion'
    ];
}