<?php

use App\Models\Programa;
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
            'nombre' => 'Ingenieria en Sistemas',
            'descripcion' => 'Ingeniera'
        ));

        Programa::create(array(
            'nombre' => 'Contabilidad',
            'descripcion' => 'Profesional'
        ));

        Programa::create(array(
            'nombre' => 'Turismo',
            'descripcion' => 'Profesional'
        ));
    }
}
