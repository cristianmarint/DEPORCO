<?php

use App\Equipo;
use Illuminate\Database\Seeder;

class EquipoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Equipo::class, 8)->create();
    }
}
