<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDatosBasicosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('datos_basicos', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('cedula', 12);
            $table->unsignedInteger('telefono_id');
            $table->string('primer_nombre',50);
            $table->string('segundo_nombre',50)->nullable(true);
            $table->string('primer_apellido',50);
            $table->string('segundo_apellido',50)->nullable(true);
            $table->unsignedInteger('tipo_sangre_id');
            $table->unsignedInteger('municipio_id');
            $table->unsignedInteger('genero_id');
            $table->unsignedInteger('direccion_id');
            $table->unsignedInteger('eps_id');
            $table->string('email')->nullable(true)->unique();
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('telefono_id')->references('id')->on('telefono')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tipo_sangre_id')->references('id')->on('tipo_sangre')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('municipio_id')->references('id')->on('municipio')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('genero_id')->references('id')->on('genero')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('direccion_id')->references('id')->on('direccion')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('eps_id')->references('id')->on('eps')
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
        Schema::dropIfExists('datos_basicos');
    }
}
