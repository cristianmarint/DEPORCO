<?php

use App\Models\Phone;
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
        factory(Phone::class, 100)->create();
    }

}
