<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblFormateursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_formateurs', function (Blueprint $table) {
            $table->increments('form_id');
            $table->string('form_name', 60);
            $table->string('form_prenom', 60);
            $table->string('form_adresse', 60);
            $table->string('form_phone', 60);
            $table->string('form_email', 191);
            $table->string('form_sexe', 1);
            $table->string('form_etat', 30);
            $table->string('form_status', 1);
            $table->string('form_formation', 80);
            $table->string('form_of', 60)->nullable();
            $table->string('form_token', 60)->nullable();
            $table->string('form_certi', 2)->nullable();
            $table->string('form_date_debut', 60)->nullable();
            $table->string('form_date_fin', 60)->nullable();
            $table->string('form_image', 60)->nullable();
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
        Schema::dropIfExists('tbl_formateurs');
    }
}
