<?php

use App\InscripcionEquipo;
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
        factory(InscripcionEquipo::class, 8)->create();
    }
}
