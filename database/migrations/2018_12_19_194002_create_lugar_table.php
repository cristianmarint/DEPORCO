<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLugarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lugar', function (Blueprint $table) {
            $table->increments('id_lugar');
            $table->string('nombre');
            $table->boolean('estado')->nullable(false)->default(true);
            $table->unsignedInteger('telefono_id');
            $table->unsignedInteger('municipio_id');
            $table->unsignedInteger('direccion_id');
            $table->timestamps();

            $table->foreign('telefono_id')->references('id_telefono')->on('telefono')
                  ->onUpdate('cascade')->onDelete('restrict');

            $table->foreign('municipio_id')->references('id_municipio')->on('municipios')
                  ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('direccion_id')->references('id_direccion')->on('direccion')
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
        Schema::dropIfExists('lugar');
    }
}
