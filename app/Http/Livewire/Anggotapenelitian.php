<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\anggotapenelitians;

class Anggotapenelitian extends Component
{
    public $id_anggota, $nama_anggota, $no_identitas, $prodi_anggota, $fakultas_anggota;
    public $updateMode = false;
    public $inputs = [];
    public $i = 1;

    public function add($i)
    {
        $i = $i + 1;
        $this->i = $i;
        array_push($this->inputs ,$i);
    }

    public function remove($i)
    {
        unset($this->inputs[$i]);
    }

    public function render()
    {
        return view('livewire.anggotapenelitian');
    }

    private function resetInputFields()
    {
        $this->nama_anggota = '';
        $this->no_identitas = '';
        $this->prodi_anggota = '';
        $this->fakultas_anggota = '';
    }
    public function store()
    {
        //$validated = $request->validate([
            //'skema_penelitian' => 'required',
            //'judul_penelitian' => 'required',
            //'id_user' => 'required',
            //'id_anggota' => 'required',
        //]);

        $data = $this->validate(
            [
                'nama_anggota.0' => 'required',
                'no_identitas.0' => 'required',
                'prodi_anggota.0' => 'required',
                'fakultas_anggota.0' => 'required',
                'nama_anggota.*' => 'required',
                'no_identitas.*' => 'required',
                'prodi_anggota.*' => 'required',
                'fakultas_anggota.*' => 'required',
            ],
            [
                'nama_anggota.0' => 'field is required',
                'no_identitas.0' => 'field is required',
                'prodi_anggota.0' => 'field is required',
                'fakultas_anggota.0' => 'field is required',
                'nama_anggota.*' => 'field is required',
                'no_identitas.*' => 'field is required',
                'prodi_anggota.*' => 'field is required',
                'fakultas_anggota.*' => 'field is required',
            ]
        );
        foreach ($this->nama_anggota as $key => $value) {
        anggotapenelitians::create([
            'nama_anggota' => $data['nama_anggota'][$key],
            'no_identitas' => $data['no_identitas'][$key],
            'prodi_anggotai' => $data['prodi_anggota'][$key],
            'fakultas_anggota' => $data['fakultas_anggota'][$key]
        ]);
        }

        $this->inputs = [];
        $this->resetInputFields();
        session()->flash('message', 'Users Created Successfully.');
        return redirect('/sipesan/penelitian/create');
    }
}
