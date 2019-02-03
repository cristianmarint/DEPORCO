<?php

use App\TipoSangre;
use Illuminate\Database\Seeder;

class TipoSangreTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TipoSangre::create(array(
            'tipo' => 'A+'
        ));
        TipoSangre::create(array(
            'tipo' => 'A-'
        ));
        TipoSangre::create(array(
            'tipo' => 'B+'
        ));
        TipoSangre::create(array(
            'tipo' => 'B-'
        ));
        TipoSangre::create(array(
            'tipo' => 'AB+'
        ));
        TipoSangre::create(array(
            'tipo' => 'AB-'
        ));
        TipoSangre::create(array(
            'tipo' => 'O+',
        ));
        TipoSangre::create(array(
            'tipo' => 'O-'
        ));
    }
}
