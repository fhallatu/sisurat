<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenelitiananggotaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penelitiananggota', function (Blueprint $table) {
            $table->integer('id_penelitiananggota')->autoIncrement();
            $table->integer('penelitian_id_penelitian');
            $table->integer('anggotapenelitians_id_anggota');
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
        Schema::dropIfExists('penelitiananggota');
    }
}
