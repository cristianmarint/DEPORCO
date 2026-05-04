<?php

use App\Models\PlayerType;
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
        PlayerType::create(array(
            'cargo' => 'Estudiante'
        ));

        PlayerType::create(array(
            'cargo' => 'Docente'
        ));

        PlayerType::create(array(
            'cargo' => 'Administrativo'
        ));
    }
}
