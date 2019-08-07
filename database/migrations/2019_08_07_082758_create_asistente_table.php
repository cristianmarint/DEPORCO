<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAsistenteTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('asistente', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('puesto',50)->nullable(false);
            $table->unsignedInteger('datos_basicos_id')->nullable(false);;
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('datos_basicos_id')->references('id')->on('datos_basicos')
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
        Schema::dropIfExists('asistente');
    }
}
