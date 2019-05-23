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
            'cantidad' => '10',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));

        Torneo::create(array(
            'nombre' => 'Torneo dos',
            'cantidad' => '10',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));

        Torneo::create(array(
            'nombre' => 'Torneo Tres',
            'cantidad' => '10',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));
    }
}
