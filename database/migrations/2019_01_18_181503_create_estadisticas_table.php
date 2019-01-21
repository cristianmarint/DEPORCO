<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEstadisticasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('estadisticas', function (Blueprint $table) {
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->unsignedInteger('inscripcion_equipo_id');
            $table->unsignedInteger('inscripcion_jugador_id');
            $table->unsignedInteger('enfrentamiento_id');
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('inscripcion_equipo_id')->references('id')->on('inscripcion_equipo')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('inscripcion_jugador_id')->references('id')->on('inscripcion_jugador')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('enfrentamiento_id')->references('id')->on('enfrentamiento')
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
        Schema::dropIfExists('estadisticas');
    }
}
