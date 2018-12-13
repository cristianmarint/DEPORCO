<?php

use App\Datos_Basicos;
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
        factory(Datos_Basicos::class,50)->create();
    }
}
