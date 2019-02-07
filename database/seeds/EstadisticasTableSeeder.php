<?php

use App\Models\Estadisticas;
use Illuminate\Database\Seeder;

class EstadisticasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Estadisticas::class,10)->create();
    }
}
