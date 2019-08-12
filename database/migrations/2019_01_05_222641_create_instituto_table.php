<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstitutoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('instituto', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('codigo_dane', 20)->unique()->nullable(false);
            $table->string('nit', 20)->unique()->nullable(false);
            $table->string('nombre', 100)->nullable(false);
            $table->string('logo', 250)->default('storage/storage/img/instituto/default.png')->nullable();
            $table->unsignedInteger('municipio_id')->nullable()->default(NULL);
            $table->unsignedInteger('tipo_educacion_id')->nullable()->default(NULL);
            $table->unsignedInteger('telefono_id')->nullable()->default(NULL);
            $table->unsignedInteger('direccion_id')->nullable()->default(NULL);
            $table->unsignedInteger('user_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('municipio_id')->references('id')->on('municipio')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('tipo_educacion_id')->references('id')->on('tipo_educacion')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('telefono_id')->references('id')->on('telefono')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('direccion_id')->references('id')->on('direccion')
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
        Schema::dropIfExists('instituto');
    }
}
