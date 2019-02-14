<?php

use App\Models\Torneo;
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
            'nombre' => 'Torneo uno',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => 3
        ));

        Torneo::create(array(
            'nombre' => 'Torneo dos',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => 2
        ));

        Torneo::create(array(
            'nombre' => 'Torneo Tres',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => 1
        ));
    }
}
