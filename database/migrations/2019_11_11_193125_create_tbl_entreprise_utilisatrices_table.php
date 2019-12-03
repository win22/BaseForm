<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblEntrepriseUtilisatricesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_entreprise_utilisatrices', function (Blueprint $table) {
            $table->increments('eu_id');
            $table->string('name', 60);
            $table->string('eu_adresse', 60);
            $table->string('eu_email', 60);
            $table->string('eu_secteurA' ,60);
            $table->string('eu_efectif' ,60);
            $table->string('eu_phone', 90);
            $table->string('eu_time', 60)->nullable();
            $table->string('eu_etat', 30);
            $table->string('eu_date_fin', 90)->nullable();
            $table->string('eu_date_ad', 90)->nullable();
            $table->string('eu_date_debut', 90)->nullable();
            $table->string('eu_ei', 90)->nullable();
            $table->string('eu_contactDe' , 60);
            $table->string('eu_nameDi' , 60);
            $table->string('user_role', 2);
            $table->string('eu_status', 2);
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
        Schema::dropIfExists('tbl_entreprise_utilisatrices');
    }
}
