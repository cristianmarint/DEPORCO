<?php

use App\Models\InscripcionEquipo;
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
        factory(InscripcionEquipo::class, 30)->create();
    }
}
