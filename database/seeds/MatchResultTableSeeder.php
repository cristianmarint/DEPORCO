<?php

use App\Models\MatchResult;
use Illuminate\Database\Seeder;

class ResultadoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(MatchResult::class, 20)->create();
    }
}
