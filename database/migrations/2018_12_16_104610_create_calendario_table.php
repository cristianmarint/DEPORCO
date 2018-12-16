<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCalendarioTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('calendario', function (Blueprint $table) {
            $table->increments('id_calendario');
            $table->unsignedInteger('torneo_id')->nullable(false);
            $table->unsignedInteger('avance_id')->nullable(false);
            $table->tinyInteger('numero_jornada')->nullable(false);
            $table->dateTime('fecha');
            $table->boolean('estado')->nullable(false)->default(true);
            // $table->timestamps();
            $table->foreign('torneo_id')->references('id_torneo')->on('torneo')
                  ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('avance_id')->references('id_calendario_avance')->on('calendario_avance')
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
        Schema::dropIfExists('calendario');
    }
}
