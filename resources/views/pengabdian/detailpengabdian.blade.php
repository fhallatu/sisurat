@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Detail Pengabdian</h1>
        </div>
        <div class="section-body">
            <div class="mb-3">
                Information about data pengabdian on this page.
            </div>
            <div class="card">
                <div class="card-header">
                    <h4>Data Pengabdian</h4>
                </div>
                <div class="card-body">
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Skema
                            Pengabdian</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm" id="skema_pengabdian" placeholder=""
                                value="{{ $pengabdian->skema_pengabdian }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Judul
                            Pengabdian</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="judul_pengabdian"
                                placeholder="" value="{{ $pengabdian->judul_pengabdian }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Judul
                            Pengabdian</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="judul_pengabdian"
                                placeholder="" value="{{ $pengabdian->judul_pengabdian }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Tahun
                            Pengabdian</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="judul_pengabdian"
                                placeholder="" value="{{ $pengabdian->tahun_pengabdian }}" disabled>
                        </div>
                    </div>
                </div>
                <div class="card-header">
                    <h4>Data Ketua</h4>
                </div>
                <div class="card-body">
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Nama
                            Ketua</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control" id="nama_user"
                                placeholder="col-form-label-sm" value="{{ $pengabdian->user->nama_user }}" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <x-input field="fakultas_user" setting="form-control" label="NIP / NIK Ketua" type="text" ph=""
                            isi="{{ $pengabdian->user->nip_user }}" disabled />

                        <x-input field="prodi_user" setting="form-control" label="NIDN Ketua" type="text" ph=""
                            isi="{{  $pengabdian->user->nidn_user }}" disabled />
                    </div>

                    <div class="row">
                        <x-input field="fakultas_user" setting="form-control" label="Fakultas Ketua" type="text" ph=""
                            isi="{{  $pengabdian->user->fakultas_user }}" disabled />

                        <x-input field="prodi_user" setting="form-control" label="Program Studi Ketua" type="text" ph=""
                            isi="{{  $pengabdian->user->prodi_user }}" disabled />
                    </div>
                </div>
                @foreach ($anggotapengabdian as $item)
                <div class="card-header">
                    <h4>Anggota</h4>
                </div>
                <div class="row">
                    <x-input field="nama_anggota" setting="form-control" label="Nama Anggota" type="text" ph=""
                        isi="{{ $item->nama_anggota }}" disabled />
                    <x-input field="no_identitas" setting="form-control" label="NIP / NPM" type="text" ph=""
                        isi="{{ $item->no_identitas }}" disabled />
                </div>
                <div class="row">
                    <x-input field="fakultas_anggota" setting="form-control" label="Fakultas Anggota" type="text" ph=""
                        isi="{{ $item->fakultas_anggota }}" disabled />
                    <x-input field="prodi_anggota" setting="form-control" label="Prodi Anggota" type="text" ph=""
                        isi="{{ $item->prodi_anggota }}" disabled />
                </div>
                @endforeach
            </div>
        </div>
        <a href='/sipesan/pengabdian' class="btn btn-danger btn-lg mt-3 ml-auto">Kembali</a>
</div>
</section>
</div>
@endsection