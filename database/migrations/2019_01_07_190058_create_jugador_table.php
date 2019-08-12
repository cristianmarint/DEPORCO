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
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->string('nombre_acudiente', 100)->nullable(false);
            $table->unsignedInteger('datos_basicos_id')->nullable(false);;
            $table->unsignedInteger('telefono_acudiente_id')->nullable()->default(NULL);
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('datos_basicos_id')->references('id')->on('datos_basicos')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('telefono_acudiente_id')->references('id')->on('telefono')
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
        Schema::dropIfExists('jugador');
    }
}
