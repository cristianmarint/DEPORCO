<?php

use App\Models\Lugar;
use Illuminate\Database\Seeder;

class LugarTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Lugar::class, 15)->create();
    }
}
