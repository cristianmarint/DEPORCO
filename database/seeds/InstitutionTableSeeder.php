<?php

use App\Models\Institution;
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
        factory(Institution::class, 20)->create();
    }
}
