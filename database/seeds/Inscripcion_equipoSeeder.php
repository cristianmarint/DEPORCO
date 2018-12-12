<?php

use App\InscripcionEquipo;
use Illuminate\Database\Seeder;

class Inscripcion_equipoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $i = 1;
        for ($i=1; $i<4; $i++){
            InscripcionEquipo::create(array(
               'id_equipo' => $i,
                'id_torneo' => 1
            ));
        }
    }
}
