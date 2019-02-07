<?php

use App\Models\TipoJugador;
use Illuminate\Database\Seeder;

class TipoJugadorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TipoJugador::create(array(
            'cargo' => 'Estudiante'
        ));

        TipoJugador::create(array(
            'cargo' => 'Docente'
        ));

        TipoJugador::create(array(
            'cargo' => 'Administrativo'
        ));
    }
}
