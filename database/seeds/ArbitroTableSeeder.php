<?php

use App\Arbitro;
use Illuminate\Database\Seeder;

class ArbitroTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Arbitro::class,10)->create();
    }
}
