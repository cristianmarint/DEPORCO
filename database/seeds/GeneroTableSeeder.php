<?php

use App\Models\Genero;
use Illuminate\Database\Seeder;

class GeneroTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Genero::create(array(
            'nombre' => 'Masculino'
        ));

        Genero::create(array(
            'nombre' => 'Femenino'
        ));

        Genero::create(array(
            'nombre' => 'Indefinido'
        ));
    }
}
