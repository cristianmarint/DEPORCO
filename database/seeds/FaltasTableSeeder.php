<?php

use App\Models\Faltas;
use Illuminate\Database\Seeder;

class FaltasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Faltas::class, 50)->create();
    }
}
