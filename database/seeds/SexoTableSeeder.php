<?php

use Illuminate\Database\Seeder;

class SexoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sexo')->insert([
            'tipo' => 'Masculino',
            ]);
        DB::table('sexo')->insert([
            'tipo' => 'Femenino'
        ]);
    }
}
