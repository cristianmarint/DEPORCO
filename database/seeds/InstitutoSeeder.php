<?php

use App\Instituto;
use Illuminate\Database\Seeder;

class InstitutoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Instituto::class,10)->create();
    }
}
