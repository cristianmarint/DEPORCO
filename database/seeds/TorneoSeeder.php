<?php

use Illuminate\Database\Seeder;
use App\Torneo;

class TorneoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Torneo::create(array(
           'nombre_torneo' => 'Cotecnova - 1',
            'id_categoria' => 1,
            'id_temporada' => 1
        ));
    }
}
