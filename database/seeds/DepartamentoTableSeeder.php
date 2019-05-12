<?php

use App\Models\Departamento;
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
        factory(Departamento::class, 10)->create();
    }
}
