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
            'nombre' => 'Mundial 2010',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));

        Torneo::create(array(
            'nombre' => 'Torneo Uno',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));

        Torneo::create(array(
            'nombre' => 'Torneo Dos',
            'temporada_id' => \App\Models\Temporada::all()->random()->id,
            'categoria_id' => \App\Models\Categoria::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));
    }
}
