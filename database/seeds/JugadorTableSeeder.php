<?php

use App\Models\Jugador;
use Illuminate\Database\Seeder;

class JugadorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Jugador::class, 80)->create();
    }
}
