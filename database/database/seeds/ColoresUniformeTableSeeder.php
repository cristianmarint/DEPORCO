<?php

use App\ColoresUniforme;
use Illuminate\Database\Seeder;

class ColoresUniformeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(ColoresUniforme::class, 10)->create();
    }
}
