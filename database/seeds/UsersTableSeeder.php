<?php

use App\User;

use Illuminate\Database\Seeder;
use Faker\Generator as Faker;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Para crear usuarios desde consola
        // php artisan voyager:admin cristianmarint@cotecnova.edu.co --create

        DB::table('users')->insert([
            'role_id' => '1',
            'datos_basicos_id' => '1',
            'name' => 'Cristian Marin',
            'email' => 'cristianmarint@depor.co',
            'password' => bcrypt('123456789'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'email_verified_at' => date('Y-m-d H:i:s'),
        ]);

        DB::table('users')->insert([
            'role_id' => '1',
            'datos_basicos_id' => '2',
            'name' => 'Edwin Lopez',
            'email' => 'edwinlopez.12@depor.co',
            'avatar' => 'https://dr.savee-cdn.com/things/5/9/9e4e29fcb5b21e693ba728.jpg',
            'password' => bcrypt('123456789'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'email_verified_at' => date('Y-m-d H:i:s'),
        ]);

        DB::table('users')->insert([
            'name' => 'Asistente',
            'email' => 'asistente@depor.co',
            'avatar' => 'storage/img/datosbasicos/default.png',
            'password' => bcrypt('123456789'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'email_verified_at' => date('Y-m-d H:i:s'),
        ]);
    }
}
