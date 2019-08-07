<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFaltaTarjetaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('falta_tarjeta', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('falta_id')->nullable(false);;
            $table->unsignedInteger('tarjeta_id')->nullable(false);;
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('falta_id')->references('id')->on('falta')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tarjeta_id')->references('id')->on('tarjeta')
                ->onUpdate('cascade')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('falta_tarjeta');
    }
}
