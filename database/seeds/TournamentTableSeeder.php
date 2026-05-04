<?php

use App\Models\Tournament;
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
        Tournament::create(array(
            'nombre' => 'Mundial 2010',
            'temporada_id' => \App\Models\Season::all()->random()->id,
            'categoria_id' => \App\Models\Category::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));

        Tournament::create(array(
            'nombre' => 'Torneo Uno',
            'temporada_id' => \App\Models\Season::all()->random()->id,
            'categoria_id' => \App\Models\Category::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));

        Tournament::create(array(
            'nombre' => 'Torneo Dos',
            'temporada_id' => \App\Models\Season::all()->random()->id,
            'categoria_id' => \App\Models\Category::all()->random()->id,
            'user_id' => \App\User::all()->random()->id
        ));
    }
}
