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
            'email' => 'cristianmarint@cotecnova.edu.co',
            'avatar' => 'https://scontent.feoh1-1.fna.fbcdn.net/v/t1.0-9/49172795_2032340176848073_3607797267651624960_o.jpg?_nc_cat=111&_nc_ht=scontent.feoh1-1.fna&oh=a7ece5939eec56f6a52b8fe4c6463b81&oe=5CEE3D6C',
            'password' => bcrypt('123'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);

        DB::table('users')->insert([
            'role_id' => '1',
            'datos_basicos_id' => '1',
            'name' => 'Edwin Lopez',
            'email' => 'edwin.lopezb.1297@cotecnova.edu.co',
            'avatar' => 'https://dr.savee-cdn.com/things/5/9/9e4e29fcb5b21e693ba728.jpg',
            'password' => bcrypt('123'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);

        DB::table('users')->insert([
            // 'role_id' => '1',
            // 'datos_basicos_id' => '1',
            'name' => 'Correo Personal Cristian',
            'email' => 'cristianmarint@gmail.com',
            'avatar' => 'img/datosbasicos/default.png',
            'password' => bcrypt('123'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
    }
}
