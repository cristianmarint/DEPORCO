<?php

use App\Sangre;
use Illuminate\Database\Seeder;

class SangreTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sangre')->insert([
            'tipo' => 'O+',
            ]);
        DB::table('sangre')->insert([
            'tipo' => 'O-'
        ]);
        DB::table('sangre')->insert([
            'tipo' => 'B+'
        ]);
        DB::table('sangre')->insert([
            'tipo' => 'B-'
        ]);
        DB::table('sangre')->insert([
            'tipo' => 'A+'
        ]);
        DB::table('sangre')->insert([
            'tipo' => 'A-'
        ]);
        DB::table('sangre')->insert([
            'tipo' => 'AB+'
        ]);
        DB::table('sangre')->insert([
            'tipo' => 'AB-'
        ]);
    }
}
