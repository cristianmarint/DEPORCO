<?php

use App\Models\Program;
use Illuminate\Database\Seeder;

class ProgramTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Program::create(array(
            'nombre' => 'Ingenieria en Sistemas',
            'descripcion' => 'Ingeniera'
        ));

        Program::create(array(
            'nombre' => 'Contabilidad',
            'descripcion' => 'Profesional'
        ));

        Program::create(array(
            'nombre' => 'Turismo',
            'descripcion' => 'Profesional'
        ));
    }
}
