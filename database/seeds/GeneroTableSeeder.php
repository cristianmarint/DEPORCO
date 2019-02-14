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
            'genero' => 'Masculino'
        ));

        Genero::create(array(
            'genero' => 'Femenino'
        ));

        Genero::create(array(
            'genero' => 'Indefinido'
        ));
    }
}
