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
            $table->string('admin_structure', 30)->nullable();
            $table->string('admin_phone',60);
            $table->string('admin_role',2);
            $table->string('admin_status',2);
            $table->string('user_role', 2)->nullable();
            $table->string('admin_prenom', 30);
            $table->string('token', 35);
            $table->string('admin_image', 30);
            $table->timestamp('created_at')->default(\DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('updated_at')->default(\DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));
        });
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
