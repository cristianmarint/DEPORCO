<?php

use App\Departamento;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartamentoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//        factory(Departamento::class, 10)->create();
        DB::table('departamentos')->insert([
            'departamento' => 'Valle del cauca',
            'created_at' => now()
        ]);

        DB::table('departamentos')->insert([
            'departamento' => 'Atlantico',
            'created_at' => now()
        ]);

        DB::table('departamentos')->insert([
            'departamento' => 'Caldas',
            'created_at' => now()
        ]);
    }
}
