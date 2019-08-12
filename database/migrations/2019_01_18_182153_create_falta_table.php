<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFaltaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('falta', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->unsignedInteger('estadistica_id')->nullable(false);
            $table->unsignedInteger('tiempo_enfrentamiento_id')->nullable(false);
            $table->time('minuto')->nullable(false);
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('estadistica_id')->references('id')->on('estadistica')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tiempo_enfrentamiento_id')->references('id')->on('tiempo_enfrentamiento')
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
        Schema::dropIfExists('falta');
    }
}
