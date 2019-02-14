<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTantosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tantos', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('estadisticas_id');
            $table->unsignedInteger('tiempo_enfrentamiento_id');
            $table->unsignedInteger('user_id');
            $table->time('minuto');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('estadisticas_id')->references('id')->on('estadisticas')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tiempo_enfrentamiento_id')->references('id')->on('tiempo_enfrentamiento')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('user_id')->references('id')->on('users')
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
        Schema::dropIfExists('tantos');
    }
}
