<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengabdiananggotaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengabdiananggota', function (Blueprint $table) {
            $table->integer('id_pengabdiananggota')->autoIncrement();
            $table->integer('pengabdian_id_pengabdian');
            $table->integer('anggotapenelitian_id_anggota');
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
        Schema::dropIfExists('pengabdiananggota');
    }
}
