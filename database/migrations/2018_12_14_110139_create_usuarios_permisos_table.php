<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsuariosPermisosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usuarios_permisos', function (Blueprint $table) {
            $table->increments('id_roles_permisos');
            $table->unsignedInteger('users_id')->nullable(false);
            $table->unsignedInteger('permiso_id')->nullable(false);


            $table->foreign('users_id')->references('id')->on('users')
                  ->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('permiso_id')->references('id_permiso')->on('permisos')
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
        Schema::dropIfExists('usuarios_permisos');
    }
}
