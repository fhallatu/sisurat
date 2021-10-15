<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\pengabdian;
use App\Models\suratpengabdians;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Auth;

class Suratpengabdian extends Component
{
    use WithFileUploads;
    public $isSurat, $thisSurat, $isLuaran;
    public $user, $id_user;
    public $suratpengabdian, $jenis_suratpengabdian, $jenis_surattugas, 
    $tgl_srt_permohonan, $no_srt_permohonan, $file_srt_permohonan, $tgl_keg_pengabdian, $tgl_sls_keg,
    $lok_keg_pengabdian, $file_proposal, $nama_mitra, $no_srt_mitra, $tgl_srt_mitra, $file_srt_mitra,
    $file_laporan, $luaran_keg, $judul_jurnal, $pub_jurnal, $file_jurnal, $file_booklet, $link_kegiatan,
    $file_absensi, $foto_kegiatan;
    public $pengabdian, $id_pengabdian;
    public $skema_pengabdian, $nama_user, $nip_user, $nidn_user, $fakultas_user, $prodi_user;
    public $anggotapengabdians, $anggotaForeach = false;
    public $nama_anggota, $no_identitas, $fakultas_anggota, $prodi_anggota;

    public function mounted($pengabdian)
    {
        $this->pengabdian = $pengabdian;
    }  
    public function updatingJenisSuratPengabdian($value)
    {
        $this->isSurat=$value;
    }
    public function updatingJenisSuratTugas($value)
    {
        $this->thisSurat=$value;
    }
    public function updatingLuaranKeg($value)
    {
        $this->isLuaran=$value;
    }
    public function updatingIdPengabdian($value)
    {
        $data = pengabdian::where('id_pengabdian', $value)->first();
        $this->skema_pengabdian = $data->skema_pengabdian;
        $this->nama_user = $data->user->nama_user;
        $this->nip_user = $data->user->nip_user;
        $this->nidn_user = $data->user->nidn_user;
        $this->fakultas_user = $data->user->fakultas_user;
        $this->prodi_user = $data->user->prodi_user;
        
        // public $nama_anggota, $no_identitas, $fakultas_anggota, $prodi_anggota;
        $this->anggotapengabdians = $data->anggotapengabdians;
        if (count($this->anggotapengabdians) > 0) {
            $this->anggotaForeach = true;
        }
    }
    public function store()
    {
            $this->validate(
                [
                    'jenis_suratpengabdian' => 'nullable',
                    'jenis_surattugas' => 'nullable',
                    'tgl_srt_permohonan' => 'nullable',
                    'no_srt_permohonan' => 'nullable',
                    'tgl_keg_pengabdian' => 'nullable',
                    'tgl_sls_keg' => 'nullable',
                    'lok_keg_pengabdian' => 'nullable',
                    'nama_mitra' => 'nullable',
                    'no_srt_mitra' => 'nullable',
                    'tgl_srt_mitra' => 'nullable',
                    'luaran_keg' => 'nullable',
                    'judul_jurnal' => 'nullable',
                    'pub_jurnal' => 'nullable',
                    'link_kegiatan' => 'nullable',
                    'id_pengabdian' => 'nullable'
            ]);

            //if(!empty($this->file_srt_permohonan))
            //{
                //$file_srt_permohonan = $this->file_srt_permohonan->store(public_path('storage/file_srt_permohonan'));
            //}
            //else
            //{
                //$file_srt_permohonan = null;
            //}

            //if(!empty($this->file_proposal))
            //{
                //$file_proposal=$this->file_proposal->store('file_proposal','public');
            //}
            //else
            //{
                //$file_proposal = null;
            //}

            //if(!empty($this->file_laporan))
            //{
                //$file_laporan=$this->file_laporan->store('file_laporan','public');
            //}
            //else
            //{
                //$file_laporan = null;
            //}

            //if(!empty($this->file_srt_mitra))
            //{
               //$file_srt_mitra = $this->file_srt_mitra->store('file_srt_mitra','public');
            //}
            //else
            //{
                //$file_srt_mitra = null;
            //}

            //if(!empty($this->file_absensi))
            //{
                //$file_absensi = $this->file_absensi->store('file_absensi','public');
            //}
            //else
            //{
                //$file_absensi = null;
            //}
            
            //if(!empty($this->foto_kegiatan))
            //{
                //$foto_kegiatan = $this->foto_kegiatan->store('foto_kegiatan','public');
            //}
            //else
            //{
                //$foto_kegiatan = null;
            //}

            //if(!empty($this->file_jurnal))
            //{
                //$file_jurnal = $this->file_jurnal->store('file_jurnal','public');
            //}
            //else
            //{
                //$file_jurnal = null;
            //} 

            //if(!empty($this->file_booklet))
            //{
                //$file_booklet = $this->file_booklet->store('file_booklet','public');
            //}
            //else
            //{
                //$file_booklet = null;
            //} 
                
        suratpengabdians::create([
                    'jenis_suratpengabdian' => $this->jenis_suratpengabdian,
                    'jenis_surattugas' => $this->jenis_surattugas,
                    'tgl_srt_permohonan' => $this->tgl_srt_permohonan,
                    'no_srt_permohonan' => $this->no_srt_permohonan,
                    'tgl_keg_pengabdian' => $this->tgl_keg_pengabdian,
                    'tgl_sls_keg' => $this->tgl_sls_keg,
                    'lok_keg_pengabdian' => $this->lok_keg_pengabdian,
                    'nama_mitra' => $this->nama_mitra,
                    'no_srt_mitra' => $this->no_srt_mitra,
                    'tgl_srt_mitra' => $this->tgl_srt_mitra,
                    'luaran_keg' => $this->luaran_keg,
                    'judul_jurnal' => $this->judul_jurnal,
                    'pub_jurnal' => $this->pub_jurnal,
                    'link_kegiatan' => $this->link_kegiatan,
                    'id_pengabdian' => $this->id_pengabdian,
                    'id_user' => Auth::user()->id_user
        ]);
        session()->flash('success', 'Data Berhasil Ditambahkan! Silahkan Upload File Persyaratan');
        return redirect('/sipesan/surat/pengabdian');
    }
    public function render()
    {
        return view('livewire.suratpengabdian');
    }
}
