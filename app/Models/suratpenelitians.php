<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class suratpenelitians extends Model
{
    use SoftDeletes;
    protected $primaryKey = 'id_srtpenelitian';
    protected $table = 'suratpenelitian';
    protected $guarded = ['id_srtpenelitian'];

    public function penelitian()
    {
        return $this->belongsTo(penelitian::class, 'id_penelitian');
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
