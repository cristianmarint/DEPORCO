<?php

use App\Inscripcion;
use Illuminate\Database\Seeder;

class InscripcionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Inscripcion::class,25)->create();
    }
}
