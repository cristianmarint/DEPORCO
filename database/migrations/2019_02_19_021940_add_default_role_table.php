<?php
/*
 * @Author: CristianMarinT 
 * @Date: 2019-02-19 12:42:46 
 * @Last Modified by: CristianMarinT
 * @Last Modified time: 2019-05-05 12:58:47
 */

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddDefaultRoleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropForeign(['role_id']);
  
            $table->foreign('role_id')
            ->references('id')
            ->on('roles')
            ->default('2')
            ->nullable(false)
            ->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropForeign(['role_id']);
            $table->dropColumn('role_id');
        });
    }
}
