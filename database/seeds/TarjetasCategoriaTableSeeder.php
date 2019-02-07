<?php

use App\Models\TarjetasCategoria;
use Illuminate\Database\Seeder;

class TarjetasCategoriaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TarjetasCategoria::create(array(
           'tarjeta_id' => 1,
            'categoria_id' => 1
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 1
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 1
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 1,
            'categoria_id' => 2
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 2
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 2
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 1,
            'categoria_id' => 3
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 3
        ));

        TarjetasCategoria::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 3
        ));
    }
}
