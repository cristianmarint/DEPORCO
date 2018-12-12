<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTorneoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('torneo', function (Blueprint $table) {
            $table->engine='InnoDB';
            $table->increments('id_torneo');
            $table->string('nombre_torneo',150);
            $table->unsignedInteger('id_categoria');
            $table->unsignedInteger('id_temporada');
            $table->tinyInteger('estado')->default(1);
            $table->timestamps();

            $table->foreign('id_categoria')->references('id_categoria')->on('categoria')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('id_temporada')->references('id_temporada')->on('temporada')
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
        Schema::dropIfExists('torneo');
    }
}
