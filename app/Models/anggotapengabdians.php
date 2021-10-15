<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class anggotapengabdians extends Model
{
    use SoftDeletes;
    protected $primaryKey = 'id_anggota';
    protected $table = 'anggotapengabdian';
    protected $fillable = ['nama_anggota', 'no_identitas', 'prodi_anggota', 'fakultas_anggota'];

    public function pengabdian()
    {
        return $this->belongsToMany(pengabdian::class, 'pengabdiananggota');
    }
}
