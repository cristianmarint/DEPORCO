<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInscripcionJugadorExamenMedicoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inscripcion_jugador_examen_medico', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tipo',50)->nullable(false);
            $table->string('archivo', 1000)->default(false)->nullable();
            $table->unsignedInteger('inscripcion_jugador_id')->nullable(false);
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('inscripcion_jugador_id')->references('id')->on('inscripcion_jugador')
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
        Schema::dropIfExists('inscripcion_jugador_examen_medico');
    }
}
