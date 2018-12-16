<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEquipoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('equipos', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id_equipo');
            $table->unsignedInteger('id_instituto');
            $table->string('nombre_equipo', 150);
            $table->string('logo', 80)->default('img/equipos/default.png');
            $table->string('colores_uniforme', 30);
            $table->boolean('estado')->nullable(false)->default(true);
            $table->timestamps();

            $table->foreign('id_instituto')->references('id_instituto')->on('institutos')
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
        Schema::dropIfExists('equipos');
    }
}
