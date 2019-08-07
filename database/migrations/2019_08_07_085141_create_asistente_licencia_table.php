<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAsistenteLicenciaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('asistente_licencia', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tipo',50)->nullable(false);
            $table->string('numero', 50)->nullable(false);
            $table->unsignedBigInteger('asistente_id')->nullable(false);
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('asistente_id')->references('id')->on('asistente')
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
        Schema::dropIfExists('asistente_licencia');
    }
}
