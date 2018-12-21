<?php

use Illuminate\Database\Seeder;
use App\Tipo_jugador;

class Tipo_jugadorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Tipo_jugador::class,10)->create();
    }
}
