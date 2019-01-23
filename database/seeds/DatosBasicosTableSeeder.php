<?php

use App\DatosBasicos;
use Illuminate\Database\Seeder;

class DatosBasicosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(DatosBasicos::class, 100)->create();
    }
}
