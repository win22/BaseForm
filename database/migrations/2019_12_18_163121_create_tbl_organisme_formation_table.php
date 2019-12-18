<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblOrganismeFormationTable extends Migration
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
            $table->string('name', 90);
            $table->string('of_adresse', 90);
            $table->string('of_email', 90);
            $table->string('of_phone', 60);
            $table->string('of_formation', 60)->nullable();
            $table->string('of_etat', 30);
            $table->string('of_date_ad', 60)->nullable();
            $table->string('of_certi', 1)->nullable();
            $table->string('of_tok', 60)->nullable();
            $table->string('of_status', 1);
            $table->string('user_role',1);
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
