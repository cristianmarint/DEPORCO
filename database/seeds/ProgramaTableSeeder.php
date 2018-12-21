<?php

use App\Programa;
use Illuminate\Database\Seeder;

class ProgramaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Programa::class,20)->create();
    }
}
