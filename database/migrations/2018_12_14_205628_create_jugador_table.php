<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJugadorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jugador', function (Blueprint $table) {
            $table->increments('id_jugador');
            $table->tinyInteger('estado')->default(1);
            $table->unsignedInteger('usuario_id')->nullable(false);
            $table->unsignedInteger('datos_basicos_id')->nullable(false);
            $table->unsignedInteger('telefono_acudiente_id')->nullable(false);
            $table->string('nombre_completo_acudiente',100)->nullable(false);            
            $table->timestamps();

            $table->foreign('usuario_id')->references('id')->on('users')
                  ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('datos_basicos_id')->references('id_datos_basicos')->on('datos_basicos')
                  ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('telefono_acudiente_id')->references('id_telefono')->on('telefono')
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
        Schema::dropIfExists('jugador');
    }
}
