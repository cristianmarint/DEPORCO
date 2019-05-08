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
            'password' => bcrypt('123'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'email_verified_at' => date('Y-m-d H:i:s'),
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
            'email_verified_at' => date('Y-m-d H:i:s'),
        ]);

        DB::table('users')->insert([
            'role_id' => '1',
            'name' => 'Andres Gaviria',
            'email' => 'andresgaviria2310@gmail.com',
            'avatar' => 'https://scontent.feoh3-1.fna.fbcdn.net/v/t1.0-9/56965599_2254403868004519_4069063543922622464_n.jpg?_nc_cat=109&_nc_ht=scontent.feoh3-1.fna&oh=586429e433681660367cb917ee52687c&oe=5D6BFA3D',
            'password' => bcrypt('123'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'email_verified_at' => date('Y-m-d H:i:s'),
        ]);

        DB::table('users')->insert([
            'name' => 'Correo Personal Cristian',
            'email' => 'cristianmarint@gmail.com',
            'avatar' => 'storage/img/datosbasicos/default.png',
            'password' => bcrypt('123'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'email_verified_at' => date('Y-m-d H:i:s'),
        ]);
    }
}
