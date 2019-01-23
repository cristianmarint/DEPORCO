<?php

use App\Departamento;
use Illuminate\Database\Seeder;

class DepartamentoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//        Departamento::create(array(
//            'departamento' => 'Atlantico'
//        ));
        factory(Departamento::class, 10)->create();
    }
}
