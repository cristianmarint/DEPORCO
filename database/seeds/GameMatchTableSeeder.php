<?php

use App\Models\GameMatch;
use Illuminate\Database\Seeder;

class EnfrentamientoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(GameMatch::class, 20)->create();
    }
}
