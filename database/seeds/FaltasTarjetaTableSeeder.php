<?php

use App\FaltasTarjeta;
use Illuminate\Database\Seeder;

class FaltasTarjetaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(FaltasTarjeta::class,15)->create();
    }
}
