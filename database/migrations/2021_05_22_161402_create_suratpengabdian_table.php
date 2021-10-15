<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuratpengabdianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('suratpengabdian', function (Blueprint $table) {
            $table->integer('id_srtpengabdian')->autoIncrement();
            $table->integer('id_user');
            $table->integer('id_pengabdian');
            $table->enum('jenis_suratpengabdianan', ['surat tugas', 'surat keterangan']);
            $table->enum('status', ['sedang diproses', 'selesai']);
            $table->enum('jenis_surattugas', ['surat permohonan mitra', 'proposal'])->nullable();
            $table->date('tgl_srt_permohonan')->nullable(); //surat tugas
            $table->string('no_srt_permohonan', 100)->nullable(); //surat tugas
            $table->string('file_srt_permohonan', 255)->nullable(); //surat tugas
            $table->date('tgl_keg_pengabdian')->nullable();
            $table->date('tgl_sls_keg')->nullable(); //surat tugas
            $table->string('lok_keg_penelitian', 255)->nullable(); //surat tugas
            $table->string('judul_materi', 255)->nullable(); //surat tugas
            $table->string('file_proposal', 255)->nullable(); //surat tugas
            $table->string('no_srt_mitra', 100)->nullable();
            $table->string('nama_mitra', 255)->nullable(); //surat keterangan
            $table->date('tgl_srt_mitra')->nullable(); //surat keterangan
            $table->string('file_srt_mitra', 255)->nullable(); //surat keterangan
            $table->string('file_laporan', 255)->nullable(); //surat keterangan
            $table->enum('luaran_keg', ['jurnal', 'berita', 'booklet', 'youtube'])->nullable(); //surat keterangan
            $table->string('judul_jurnal', 255)->nullable(); //surat keterangan
            $table->string('pub_jurnal', 255)->nullable(); //surat keterangan
            $table->string('file_jurnal', 255)->nullable();
            $table->string('file_booklet', 255)->nullable(); //surat keterangan
            $table->string('link_kegiatan', 255)->nullable(); //surat keterangan
            $table->string('file_absensi', 255)->nullable(); //surat keterangan
            $table->string('foto_kegiatan', 255)->nullable(); //surat keterangan
            $table->string('file_suratpengabdian', 255)->nullable();
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
        Schema::dropIfExists('suratpengabdian');
    }
}
