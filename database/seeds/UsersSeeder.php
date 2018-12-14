<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'rol_id'=> 1,
            'name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('admin'),
            'remember_token' => str_random(10),
            'created_at' => now()
        ]);
        
        DB::table('users')->insert([
            'rol_id'=> 1,
            'name' => 'Cristian Marin',
            'email' => 'cristianmarint@cotecnova.edu.co',
            'password' => bcrypt('123'),
            'remember_token' => str_random(10),
            'created_at' => now()
        ]);
        DB::table('users')->insert([
            'rol_id'=> 1,
            'name' => 'Edwin Lopez',
            'email' => 'edwin.lopezb.1297@cotecnova.edu.co',
            'password' => bcrypt('123'),
            'remember_token' => str_random(10),
            'created_at' => now()
        ]);
        DB::table('users')->insert([
            'name' => 'El tronco',
            'email' => 'eltronco@gmail.com',
            'password' => bcrypt('123'),
            'remember_token' => str_random(10),
            'created_at' => now()
        ]);
    }
}
