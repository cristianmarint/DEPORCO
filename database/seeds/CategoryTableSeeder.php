<?php

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create(array(
           'nombre' => 'Futbol-5',
           'descripcion' => 'Descripcion de Futbol-5'
        ));

        Category::create(array(
            'nombre' => 'Futbol-8',
            'descripcion' => 'Descripcion de Futbol-8'
        ));

        Category::create(array(
            'nombre' => 'Futbol-11',
            'descripcion' => 'Descripcion de Futbol-11'
        ));
    }
}
