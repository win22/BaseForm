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
            $table->string('eu_name');
            $table->string('eu_adresse');
            $table->string('eu_email');
            $table->string('eu_secteurA');
            $table->string('eu_efectif');
            $table->string('eu_phone');
            $table->string('eu_contactDe');
            $table->string('eu_nameDi');
            $table->string('user_role');
            $table->timestamps();
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
