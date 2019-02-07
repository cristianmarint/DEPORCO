<?php

use App\Models\Categoria;
use Illuminate\Database\Seeder;

class CategoriaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categoria::create(array(
           'descripcion' => 'Futbol-5'
        ));

        Categoria::create(array(
            'descripcion' => 'Futbol-8'
        ));

        Categoria::create(array(
            'descripcion' => 'Futbol-11'
        ));
    }
}
