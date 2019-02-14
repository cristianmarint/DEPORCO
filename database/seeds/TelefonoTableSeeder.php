<?php

use App\Models\Telefono;
use Illuminate\Database\Seeder;

class TelefonoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Telefono::class, 100)->create();
    }

}
