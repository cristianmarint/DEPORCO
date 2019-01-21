<?php

use App\Resultado;
use Illuminate\Database\Seeder;

class ResultadoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Resultado::class, 10)->create();
    }
}
