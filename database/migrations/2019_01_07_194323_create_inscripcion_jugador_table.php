<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInscripcionJugadorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inscripcion_jugador', function (Blueprint $table) {
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->boolean('capitan')->default(false);
            $table->char('talla',5)->nullable()->default(null);
            $table->tinyInteger('peso')->nullable()->default(null);
            $table->tinyInteger('numero_dorsal')->nullable()->default(null);

            $table->unsignedInteger('jugador_id')->nullable(false);
            $table->unsignedInteger('inscripcion_equipo_id')->nullable(false);
            $table->unsignedInteger('programa_id')->nullable()->default(NULL);;
            $table->unsignedInteger('tipo_jugador_id')->nullable(false);
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('jugador_id')->references('id')->on('jugador')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('inscripcion_equipo_id')->references('id')->on('inscripcion_equipo')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('programa_id')->references('id')->on('programa')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tipo_jugador_id')->references('id')->on('tipo_jugador')
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
        Schema::dropIfExists('inscripcion_jugador');
    }
}
