<?php

use App\Models\Gender;
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
        Gender::create(array(
            'nombre' => 'Masculino'
        ));

        Gender::create(array(
            'nombre' => 'Femenino'
        ));

        Gender::create(array(
            'nombre' => 'Indefinido'
        ));
    }
}
