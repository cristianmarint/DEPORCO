<?php

use App\Models\TeamRegistration;
use Illuminate\Database\Seeder;

class InscripcionEquipoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(TeamRegistration::class, 16)->create();
    }
}
