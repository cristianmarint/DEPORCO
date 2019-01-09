<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesPermisosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles_permisos', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->unsignedInteger('rol_id');
            $table->unsignedInteger('permisos_id');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('rol_id')->references('id')->on('roles')
                ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('permisos_id')->references('id')->on('permisos')
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
        Schema::dropIfExists('roles_permisos_');
    }
}
