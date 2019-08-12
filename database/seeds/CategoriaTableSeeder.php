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
           'nombre' => 'Futbol-5',
           'descripcion' => 'Descripcion de Futbol-5'
        ));

        Categoria::create(array(
            'nombre' => 'Futbol-8',
            'descripcion' => 'Descripcion de Futbol-8'
        ));

        Categoria::create(array(
            'nombre' => 'Futbol-11',
            'descripcion' => 'Descripcion de Futbol-11'
        ));
    }
}
