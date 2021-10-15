<?php

namespace App\Http\Livewire;

use App\Models\penelitian;
use App\Models\suratpenelitians;
use App\Models\User;
use Livewire\Component;
use Livewire\WithFileUploads;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class Suratpenelitian extends Component
{
    public $isSurat;
    public $user, $id_user;
    public $suratpenelitian, $jenis_suratpenelitian, $tj_keg_penelitian, $lok_keg_penelitian, $tgl_keg_penelitian, $tgl_sls_keg, $jk_waktu_penelitian, 
    $thn_pelaksanaan, $smbr_dana_penelitian, $jmlh_dana_penelitian, $file_suratpenelitian, $id_penandatangan;
    public $penelitian, $id_penelitian;
    public $skema_penelitian, $nama_user, $nip_user, $nidn_user, $fakultas_user, $prodi_user;
    public $anggotapenelitians, $anggotaForeach = false;
    public $nama_anggota, $no_identitas, $fakultas_anggota, $prodi_anggota;
    use WithFileUploads;

    public function mounted($penelitian)
    {
        $this->penelitian = $penelitian;
    }

    public function render()
    {
        return view('livewire.suratpenelitian');
    }
    
    public function updatingJenisSuratPenelitian($value)
    {
        $this->isSurat=$value;
    }

    public function updatingIdPenelitian($value)
    {
        $data = penelitian::where('id_penelitian', $value)->first();
        $this->skema_penelitian = $data->skema_penelitian;
        $this->nama_user = $data->user->nama_user;
        $this->nip_user = $data->user->nip_user;
        $this->nidn_user = $data->user->nidn_user;
        $this->fakultas_user = $data->user->fakultas_user;
        $this->prodi_user = $data->user->prodi_user;

        // public $nama_anggota, $no_identitas, $fakultas_anggota, $prodi_anggota;
        $this->anggotapenelitians = $data->anggotapenelitians;
        if (count($this->anggotapenelitians) > 0) {
            $this->anggotaForeach = true;
        }
    }

    public function store()
    {
            $this->validate(
                [
                    'jenis_suratpenelitian' => 'nullable',
                    'tj_keg_penelitian' => 'nullable',
                    'lok_keg_penelitian' => 'nullable',
                    'tgl_keg_penelitian' => 'nullable',
                    'tgl_sls_keg' => 'nullable',
                    'id_penelitian' => 'nullable',
                    'jenis_suratpenelitian' => 'nullable',
                    'jk_waktu_penelitian' => 'nullable',
                    'thn_pelaksanaan' => 'nullable',
                    'smbr_dana_penelitian' => 'nullable',
                    'jmlh_dana_penelitian' => 'nullable',
                    'file_suratpenelitian' => 'nullable',
            ]);
            
        suratpenelitians::create([
            'jenis_suratpenelitian' => $this->jenis_suratpenelitian,
            'tj_keg_penelitian' => $this->tj_keg_penelitian,
            'lok_keg_penelitian' => $this->lok_keg_penelitian,
            'tgl_keg_penelitian' => $this->tgl_keg_penelitian,
            'tgl_sls_keg' => $this->tgl_sls_keg,
            'jk_waktu_penelitian' => $this->jk_waktu_penelitian,
            'thn_pelaksanaan' => $this->thn_pelaksanaan,
            'smbr_dana_penelitian' => $this->smbr_dana_penelitian,
            'jmlh_dana_penelitian' => $this->jmlh_dana_penelitian,
            'file_suratpenelitian' => $this->file_suratpenelitian,
            'id_penelitian' => $this->id_penelitian,
            'id_user' => Auth::user()->id_user
        ]);
        session()->flash('toast_success', 'Data Berhasil Ditambahkan!');
        return redirect('/sipesan/surat/penelitian');
    }
}
