@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Edit Data User </h1>
        </div>

        <form action="/sipesan/user/{{$user->id_user}}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            <h4>Data Diri</h4>
                        </div>

                        <x-input field="nama_user" setting="form-control" label="Nama" type="text"
                            ph="Nama Lengkap Anda..." isi="{{$user->nama_user}}" />
                        <x-input field="nip_user" setting="form-control" label="NIP / NIK" type="text"
                            ph="Tuliskan NIP / NIK Anda..." isi="{{$user->nip_user}}" />
                        <x-input field="nidn_user" setting="form-control" label="NIDN" type="text"
                            ph="Tuliskan NIDN Anda..." isi="{{$user->nidn_user}}" />

                        <x-input_group field="tgl_lahir_user" setting="form-control" label="Tanggal Lahir" type="date"
                            ph="Masukkan Email Anda..." isi="{{$user->tgl_lahir_user}}" icon="fas fa-calendar" />
                        <x-input_group field="email_user" setting="form-control" label="Email" type="email"
                            ph="Masukkan Email Anda..." isi="{{$user->email_user}}" icon="fas fa-envelope" />
                        <x-input_group field="no_hp_user" setting="form-control" label="Nomor Handphone" type="text"
                            ph="Masukkan Nomor Anda..." isi="{{$user->no_hp_user}}" icon="fas fa-mobile-alt" />
                        <x-input_group field="alamat_user" setting="form-control" label="Alamat" type="text"
                            ph="Masukkan Alamat Anda..." isi="{{$user->alamat_user}}" icon="fas fa-map-marked-alt" />

                        <div class="row">
                            <x-input field="prodi_user" setting="form-control" label="Program Studi" type="text"
                                ph="Tuliskan Prodi Anda..." isi="{{$user->prodi_user}}" />
                            <x-input field="fakultas_user" setting="form-control" label="Fakultas" type="text"
                                ph="Tuliskan Fakultas Anda..." isi="{{$user->fakultas_user}}" />
                        </div>

                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-6">
                    <div class="card">

                        <div class="form-group ml-4 mr-3 mt-3 mb-auto">
                            <label class="form-label">Hak Akses</label>
                            @if($user->hak_akses == 'admin' )
                            <div class="selectgroup w-100">
                                <label class="selectgroup-item">
                                    <input checked type="radio" name="hak_akses" value="admin" class="selectgroup-input"
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
                            @elseif($user->hak_akses == 'staff' )
                            <div class="selectgroup w-100">
                                <label class="selectgroup-item">
                                    <input checked type="radio" name="hak_akses" value="admin" class="selectgroup-input"
                                        checked="">
                                    <span class="selectgroup-button">Admin</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input checked type="radio" name="hak_akses" value="staff"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">Staff</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="radio" name="hak_akses" value="dosen" class="selectgroup-input">
                                    <span class="selectgroup-button">Dosen</span>
                                </label>
                            </div>
                            @elseif($user->hak_akses == 'dosen' )
                            <div class="selectgroup w-100">
                                <label class="selectgroup-item">
                                    <input checked type="radio" name="hak_akses" value="admin" class="selectgroup-input"
                                        checked="">
                                    <span class="selectgroup-button">Admin</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input checked type="radio" name="hak_akses" value="staff"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">Staff</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input checked type="radio" name="hak_akses" value="dosen"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">Dosen</span>
                                </label>
                            </div>
                            @endif
                        </div>

                        <div class="form-group ml-4 mr-3 mt-3 mb-0">
                            <label class="form-label">Jenis Kelamin</label>
                            <div class="row">
                                @if($user->jenis_kelamin_user == 'L' )
                                <div class="form-check ml-3">
                                    <input checked class="form-check-input" type="radio" name="jenis_kelamin_user"
                                        id="inlineRadio1" value=" L ">
                                    <label class="form-check-label" for="inlineRadio1"><i class="fas fa-mars"> ( L )
                                        </i></label>
                                </div>
                                <div class="form-check ml-2">
                                    <input class="form-check-input" type="radio" name="jenis_kelamin_user"
                                        id="inlineRadio1" value=" P ">
                                    <label class="form-check-label" for="inlineRadio2"><i class="fas fa-venus"> ( P )
                                        </i></label>
                                </div>
                                @elseif($user->jenis_kelamin_user == 'P' )
                                <div class="form-check ml-3">
                                    <input class="form-check-input" type="radio" name="jenis_kelamin_user"
                                        id="inlineRadio1" value=" L ">
                                    <label class="form-check-label" for="inlineRadio1"><i class="fas fa-mars"> ( L )
                                        </i></label>
                                </div>
                                <div class="form-check ml-2">
                                    <input checked class="form-check-input" type="radio" name="jenis_kelamin_user"
                                        id="inlineRadio1" value=" P ">
                                    <label class="form-check-label" for="inlineRadio2"><i class="fas fa-venus"> ( P )
                                        </i></label>
                                </div>
                                @endif
                            </div>
                        </div>

                        @if($user->foto_profil)
                        <div class="ml-4 mr-2 mb-2 mt-4">
                        <img src="{{ asset('foto_profile/'.$user->foto_profil) }}" width="150" />
                        </div>
                        @else
                            <p> Belum Ada Foto Profile </p>
                        @endif

                        <div class="ml-4 mr-2 mb-5 mt-4">
                            <label for="formFile" class="form-label">Foto Profile</label>
                            <input class="form-control-file" type="file" id="foto_profil" name="foto_profil"
                                value={{ $user->foto_profil }}>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary btn-lg mt-3">Simpan</button>
                    <a href='/sipesan/user' class="btn btn-danger btn-lg mt-3 ml-auto">Kembali</a>

                </div>
            </div>

        </form>

        @endsection
