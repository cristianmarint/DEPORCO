<?php

use App\Enfrentamiento_arbitro;
use Illuminate\Database\Seeder;

class Enfrentamiento_arbitroTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Enfrentamiento_arbitro::class,10)->create();
    }
}
