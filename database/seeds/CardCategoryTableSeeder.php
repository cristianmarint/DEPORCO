<?php

use App\Models\CardCategory;
use Illuminate\Database\Seeder;

class CardCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CardCategory::create(array(
           'tarjeta_id' => 1,
            'categoria_id' => 1
        ));

        CardCategory::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 1
        ));

        CardCategory::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 1
        ));

        CardCategory::create(array(
            'tarjeta_id' => 1,
            'categoria_id' => 2
        ));

        CardCategory::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 2
        ));

        CardCategory::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 2
        ));

        CardCategory::create(array(
            'tarjeta_id' => 1,
            'categoria_id' => 3
        ));

        CardCategory::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 3
        ));

        CardCategory::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 3
        ));
    }
}
