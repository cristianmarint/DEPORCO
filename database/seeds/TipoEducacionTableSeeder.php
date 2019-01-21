<?php

use App\TipoEducacion;
use Illuminate\Database\Seeder;

class TipoEducacionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TipoEducacion::create(array(
           'tipo' => 'Privado'
        ));

        TipoEducacion::create(array(
            'tipo' => 'Publico'
        ));

        TipoEducacion::create(array(
            'tipo' => 'Otro'
        ));
    }
}
