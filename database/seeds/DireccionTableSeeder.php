<?php

use App\Direccion;
use Illuminate\Database\Seeder;

class DireccionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Direccion::class,10)->create();
    }
}
