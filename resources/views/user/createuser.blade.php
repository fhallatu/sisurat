@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Tambah Data User </h1>
        </div>

        <form action="/sipesan/user" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            <h4>Data Diri</h4>
                        </div>

                        <x-input field="nama_user" setting="form-control" label="Nama" type="text"
                            ph="Nama Lengkap Anda..." isi="" />
                        <x-input field="nip_user" setting="form-control" label="NIP / NIK" type="text"
                            ph="Tuliskan NIP / NIK Anda..." isi="" />
                        <x-input field="nidn_user" setting="form-control" label="NIDN" type="text"
                            ph="Tuliskan NIDN Anda..." isi="" />

                        <x-input_group field="tgl_lahir_user" setting="form-control" label="Tanggal Lahir" type="date"
                            ph="Masukkan Email Anda..." isi="" icon="fas fa-calendar" />
                        <x-input_group field="email_user" setting="form-control" label="Email" type="email"
                            ph="Masukkan Email Anda..." isi="" icon="fas fa-envelope" />
                        <x-input_group field="no_hp_user" setting="form-control" label="Nomor Handphone" type="text"
                            ph="Masukkan Nomor Anda..." isi="" icon="fas fa-mobile-alt" />
                        <x-input_group field="alamat_user" setting="form-control" label="Alamat" type="text"
                            ph="Masukkan Alamat Anda..." isi="" icon="fas fa-map-marked-alt" />

                        <div class="row">
                            <x-input field="prodi_user" setting="form-control" label="Program Studi" type="text"
                                ph="Tuliskan Prodi Anda..." isi="" />
                            <x-input field="fakultas_user" setting="form-control" label="Fakultas" type="text"
                                ph="Tuliskan Fakultas Anda..." isi="" />
                        </div>

                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-6">
                    <div class="card">

                        <div class="form-group ml-4 mr-3 mt-3 mb-auto">
                            <label class="form-label">Hak Akses</label>
                            <div class="selectgroup w-100">
                                <label class="selectgroup-item">
                                    <input type="radio" name="hak_akses" value="admin" class="selectgroup-input"
                                        checked="">
                                    <span class="selectgroup-button">Admin</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="radio" name="hak_akses" value="staff" class="selectgroup-input">
                                    <span class="selectgroup-button">Staff</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="radio" name="hak_akses" value="dosen" class="selectgroup-input">
                                    <span class="selectgroup-button">Dosen</span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group ml-4 mr-3 mt-3 mb-0">
                            <label class="form-label">Jenis Kelamin</label>
                            <div class="row">
                                <div class="form-check ml-4">
                                    <input class="form-check-input" type="radio" name="jenis_kelamin_user"
                                        id="inlineRadio1" value="L">
                                    <label class="form-check-label" for="inlineRadio1"><i class="fas fa-mars"> ( L )
                                        </i></label>
                                </div>
                                <div class="form-check ml-2">
                                    <input class="form-check-input" type="radio" name="jenis_kelamin_user"
                                        id="inlineRadio2" value="P">
                                    <label class="form-check-label" for="inlineRadio2"><i class="fas fa-venus"> ( P )
                                        </i></label>
                                </div>
                            </div>
                        </div>

                        <div class="ml-4 mr-2 mb-5 mt-3">
                            <label for="foto_profil" class="form-label rounded">Foto Profile</label>
                            <input class="form-control" type="file" id="foto_profil" name="foto_profil">
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary btn-lg mt-3">Submit</button>
                    <a href='/sipesan/user' class="btn btn-danger btn-lg mt-3 ml-auto">Kembali</a>

                </div>
            </div>

        </form>

        @endsection
