<?php

use App\Programa;
use Illuminate\Database\Seeder;

class ProgramaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Programa::create(array(
            'programa' => 'Ingenieria en Sistemas',
            'descripcion' => 'Ingeniera'
        ));

        Programa::create(array(
            'programa' => 'Contabilidad',
            'descripcion' => 'Profesional'
        ));

        Programa::create(array(
            'programa' => 'Turismo',
            'descripcion' => 'Profesional'
        ));
    }
}
