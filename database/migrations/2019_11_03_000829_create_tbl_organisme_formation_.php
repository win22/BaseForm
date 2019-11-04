<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblOrganismeFormation extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_organisme_formation', function (Blueprint $table) {
            $table->increments('of_id');
            $table->string('of_raison', 90);
            $table->string('of_adresse', 90);
            $table->string('of_email', 90);
            $table->string('of_phone', 60);
            $table->string('of_formation', 60);
            $table->string('of_status', 2);
            $table->string('user_role',2);
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
        Schema::dropIfExists('tbl_organisme_formation');
    }
}
