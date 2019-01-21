<?php

use App\Enfrentamiento;
use Illuminate\Database\Seeder;

class EnfrentamientoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Enfrentamiento::class, 20)->create();
    }
}
