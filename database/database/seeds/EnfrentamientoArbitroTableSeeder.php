<?php

use App\EnfrentamientoArbitro;
use Illuminate\Database\Seeder;

class EnfrentamientoArbitroTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(EnfrentamientoArbitro::class, 15);
    }
}
