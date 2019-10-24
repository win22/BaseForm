<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblAdminTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_admin', function (Blueprint $table) {
            $table->increments('admin_id');
            $table->string('admin_email', 191)->unique();
            $table->string('admin_password');
            $table->string('admin_structure');
            $table->string('admin_phone');
            $table->string('admin_role');
            $table->string('admin_status');
            $table->string('token');
            $table->string('admin_image');
            $table->timestamps();        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_admin');
    }
}
