<?php

use App\Instituto;
use Illuminate\Database\Seeder;

class InstitutoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Instituto::class, 20)->create();
    }
}
