<?php

use App\Models\TarjetaCategoria;
use Illuminate\Database\Seeder;

class TarjetaCategoriaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TarjetaCategoria::create(array(
           'tarjeta_id' => 1,
            'categoria_id' => 1
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 1
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 1
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 1,
            'categoria_id' => 2
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 2
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 2
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 1,
            'categoria_id' => 3
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 2,
            'categoria_id' => 3
        ));

        TarjetaCategoria::create(array(
            'tarjeta_id' => 3,
            'categoria_id' => 3
        ));
    }
}
