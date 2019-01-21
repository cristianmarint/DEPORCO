<?php

use App\Torneo;
use Illuminate\Database\Seeder;

class TorneoTableSedeer extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Torneo::create(array(
            'nombre' => 'Torneo Prueba',
            'temporada_id' => \App\Temporada::all()->random()->id,
            'categoria_id' => \App\Temporada::all()->random()->id,
            'user_id' => 2
        ));
    }
}
