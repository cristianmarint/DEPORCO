<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTemporadaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temporada', function (Blueprint $table) {
            $table->engine='InnoDB';
            $table->increments('id_temporada');
            $table->string('numero_temporada', 20);
            $table->string('descripcion', 150);
            $table->boolean('estado')->nullable(false)->default(true);
            $table->date('fecha_inicio');
            $table->date('fecha_fin');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('temporada');
    }
}
