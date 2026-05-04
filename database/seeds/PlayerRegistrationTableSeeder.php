<?php

use App\Models\PlayerRegistration;
use Illuminate\Database\Seeder;

class InscripcionJugadorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(PlayerRegistration::class, 160)->create();
    }
}