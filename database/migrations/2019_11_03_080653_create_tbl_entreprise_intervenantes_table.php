<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblEntrepriseIntervenantesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_entreprise_intervenantes', function (Blueprint $table) {
            $table->increments('ei_id');
            $table->string('name', 90);
            $table->string('ei_adresse', 90);
            $table->string('ei_email', 191);
            $table->string('ei_secteurA', 90);
            $table->string('ei_phone', 60);
            $table->string('ei_nameDi', 60);
            $table->string('ei_eu', 60);
            $table->string('user_role', 2);
            $table->string('ei_status');
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
        Schema::dropIfExists('tbl_entreprise_intervenantes');
    }
}
