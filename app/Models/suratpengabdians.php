<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class suratpengabdians extends Model
{
    use SoftDeletes;
    protected $primaryKey = 'id_srtpengabdian';
    protected $table = 'suratpengabdian';
    protected $guarded = ['id_srtpengabdian'];
    protected $fillable = ['id_user','id_pengabdian','id_penandatangan','jenis_suratpengabdian','status','jenis_surattugas','tgl_srt_permohonan','no_srt_permohonan','file_srt_permohonan',
    'tgl_keg_pengabdian','tgl_sls_keg','lok_keg_peneilitian','judul_materi','file_proposal','no_srt_mitra','nama_mitra','tgl_srt_mitra','file_srt_mitra',
    'file_laporan','luaran_keg','judul_jurnal','pub_jurnal','file_jurnal','file_booklet','link_kegiatan','file_absensi','foto_kegiatan','file_suratpengabdian'];

    public function pengabdian()
    {
        return $this->belongsTo(pengabdian::class, 'id_pengabdian');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
    public function penandatangan()
    {
        return $this->belongsTo(penandatangan::class, 'id_penandatangan');
    }
}
