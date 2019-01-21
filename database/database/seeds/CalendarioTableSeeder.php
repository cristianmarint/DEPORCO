<?php

use App\Calendario;
use Illuminate\Database\Seeder;

class CalendarioTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Calendario::class, 16)->create();
    }
}
