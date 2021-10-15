<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuratpenelitianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('suratpenelitian', function (Blueprint $table) {
            $table->integer('id_srtpenelitian')->autoIncrement();
            $table->integer('id_penelitian');
            $table->integer('id_user');
            $table->integer('id_penandatangan');
            $table->enum('jenis_suratpenelitian', ['surat tugas', 'surat keterangan']);
            $table->enum('status', ['sedang diproses', 'selesai']);
            $table->string('tj_keg_penelitian', 255)->nullable();
            $table->string('lok_keg_penelitian', 255)->nullable();
            $table->date('tgl_keg_penelitian')->nullable();
            $table->date('tgl_sls_keg')->nullable();
            $table->integer('jk_waktu_peneltian')->nullable();
            $table->integer('thn_pelaksanaan')->nullable();
            $table->string('smbr_dana_penelitian', 100)->nullable();
            $table->integer('jmlh_dana_penelitian')->nullable();
            $table->string('file_suratpenelitian', 255)->nullable();
            $table->timestamps();
            $table->softDeletes('deleted_at', 0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('suratpenelitian');
    }
}
