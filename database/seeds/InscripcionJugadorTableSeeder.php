<?php

use App\Models\InscripcionJugador;
use Illuminate\Database\Seeder;

class InscripcionJugadorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(InscripcionJugador::class, 80)->create();
    }
}
