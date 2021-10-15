<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class pengabdian extends Model
{
    use SoftDeletes;
    protected $primaryKey = 'id_pengabdian';
    protected $table = 'pengabdian';
    protected $guarded = ['id_pengabdian'];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
    public function anggotapengabdians()
    {
        return $this->BelongsToMany(anggotapengabdians::class, 'pengabdiananggota');
    }
    public function suratpengabdian()
    {
        return $this->hasMany(suratpengabdians::class, 'id_srtpengabdian');
    }
}
