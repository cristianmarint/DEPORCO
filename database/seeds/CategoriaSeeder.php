<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categoria')->insert([
           'categoria' => 'Futbol-5 M',
            'descripcion' => 'futbol-5 masculino',
            'created_at' => now(),
            'updated_at' => now()
        ]);

        DB::table('categoria')->insert([
            'categoria' => 'Futbol-5 F',
            'descripcion' => 'futbol-5 femenino',
            'created_at' => now(),
            'updated_at' => now()
        ]);
    }
}
