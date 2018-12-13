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
            $table->engine='InnoDB';
            $table->increments('id_datos_basicos');
            $table->integer('cedula')->nullable(false);
            $table->unsignedInteger('telefono_id')->nullable();
            $table->string('primer_nombre',50)->nullable(false);
            $table->string('segundo_nombre',50)->nullable();
            $table->string('primer_apellido',50)->nullable(false);
            $table->string('segundo_apellido',50)->nullable();
            $table->unsignedInteger('sangre_id')->nullable(false);
            $table->unsignedInteger('municipio_id')->nullable(false);            
            $table->unsignedInteger('sexo_id')->nullable(false);
            $table->unsignedInteger('direccion_id')->nullable(false);
            $table->unsignedInteger('eps_id')->nullable(false);
            $table->string('email',200)->nullable(false);
            $table->timestamps();


            $table->foreign('telefono_id')->references('id_telefono')->on('telefono')
                  ->onUpdate('cascade')->onDelete('restrict');

            $table->foreign('sangre_id')->references('id_sangre')->on('sangre')
                  ->onUpdate('cascade')->onDelete('restrict');
            
            $table->foreign('municipio_id')->references('id_municipio')->on('municipios')
                  ->onUpdate('cascade')->onDelete('restrict');
            
            $table->foreign('sexo_id')->references('id_sexo')->on('sexo')
                  ->onUpdate('cascade')->onDelete('restrict');
            
            $table->foreign('direccion_id')->references('id_direccion')->on('direccion')
                  ->onUpdate('cascade')->onDelete('restrict');

            $table->foreign('eps_id')->references('id_eps')->on('eps')
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
