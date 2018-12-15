<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUsuarioIdToTorneo extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('torneo',function(Blueprint $table){
            $table->unsignedInteger('usuario_id')->nullable()->after('id_torneo');
            
            $table->foreign('usuario_id')->references('id')->on('users')
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
        Schema::table('torneo',function(Blueprint $table){
            $table->dropForeign(['usuario_id']);
            $table->dropColumn('usuario_id');
        });
    }
}
