<?php

use Illuminate\Database\Seeder;
use App\Resultado_futbol;

class Resultado_futbolTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Resultado_futbol::class,20)->create();
    }
}
