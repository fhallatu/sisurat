@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Profile</h1>
        </div>

        <form action="/sipesan/profile" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="section-body">
                <h2 class="section-title">Hi, {{ $user->nama_user }}</h2>
                <p class="section-lead">
                    Change information about yourself on this page.
                </p>
                <div class="row mt-sm-4">
                    <div class="col-12 col-md-12 col-lg-5">
                        <div class="card profile-widget">
                            <div class="profile-widget-header">
                                <img alt="image" src="{{ asset('foto_profile/'.$user->foto_profil) }}"
                                    class="rounded-circle profile-widget-picture">
                            </div>
                            <div class="profile-widget-description">
                                <div class="profile-widget-name text-primary mb-3">
                                    <h4>Data Profile</h4>
                                </div>
                                <div class="profile-widget-name">{{ $user->nama_user }}<div
                                        class="text-muted d-inline font-weight-normal">
                                        <div class="slash"></div> {{ $user->hak_akses }}
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm"
                                        class="col-sm-3 col-form-label col-form-label-sm ">Nama</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-sm" id="nama_user"
                                            placeholder="col-form-label-sm" value="{{ $user->nama_user }}" disabled>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">NIP /
                                        NIK</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-sm ml-auto" id="nip_user"
                                            placeholder="col-form-label-sm" value="{{ $user->nip_user }}" disabled>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm"
                                        class="col-sm-3 col-form-label col-form-label-sm ">NIDN</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-sm ml-auto" id="nidn_user"
                                            placeholder="col-form-label-sm" value="{{ $user->nidn_user }}" disabled>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm"
                                        class="col-sm-3 col-form-label col-form-label-sm ">Email</label>
                                    <div class="col-sm-9">
                                        <input type="email" class="form-control form-control-sm ml-auto" id="email_user"
                                            placeholder="col-form-label-sm" value="{{ $user->email_user }}" disabled>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm"
                                        class="col-sm-3 col-form-label col-form-label-sm ">Telepon</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-sm ml-auto" id="no_hp_user"
                                            placeholder="col-form-label-sm" value="{{ $user->no_hp_user }}" disabled>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm"
                                        class="col-sm-3 col-form-label col-form-label-sm ">Alamat</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control summernote-simple"
                                            value="{{ $user->alamat_user }}"
                                            disabled>{{ $user->alamat_user }}</textarea>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm"
                                        class="col-sm-3 col-form-label col-form-label-sm ">Program
                                        Studi</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-sm ml-auto" id="prodi_user"
                                            placeholder="col-form-label-sm" value="{{ $user->prodi_user }}" disabled>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="colFormLabelSm"
                                        class="col-sm-3 col-form-label col-form-label-sm ">Fakultas</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control form-control-sm ml-auto"
                                            id="fakultas_user" placeholder="col-form-label-sm"
                                            value="{{ $user->fakultas_user }}" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-7">
                        <div class="card">
                            <form method="post" class="needs-validation" novalidate="">
                                <div class="card-header">
                                    <h4>Edit Profile</h4>
                                </div>
                                <div class="card-body">
                                    <x-input field="nama_user" setting="form-control" label="Nama" type="text"
                                        ph="Nama Lengkap Anda..." isi="{{$user->nama_user}}" />
                                    <x-input field="nip_user" setting="form-control" label="NIP / NIK" type="text"
                                        ph="Tuliskan NIP / NIK Anda..." isi="{{$user->nip_user}}" />
                                    <x-input field="nidn_user" setting="form-control" label="NIDN" type="text"
                                        ph="Tuliskan NIDN Anda..." isi="{{$user->nidn_user}}" />

                                    <x-input_group field="tgl_lahir_user" setting="form-control" label="Tanggal Lahir"
                                        type="date" ph="Masukkan Email Anda..." isi="{{$user->tgl_lahir_user}}"
                                        icon="fas fa-calendar" />
                                    <x-input_group field="email_user" setting="form-control" label="Email" type="email"
                                        ph="Masukkan Email Anda..." isi="{{$user->email_user}}"
                                        icon="fas fa-envelope" />
                                    <x-input_group field="no_hp_user" setting="form-control" label="Nomor Handphone"
                                        type="text" ph="Masukkan Nomor Anda..." isi="{{$user->no_hp_user}}"
                                        icon="fas fa-mobile-alt" />
                                    <x-input_group field="alamat_user" setting="form-control" label="Alamat" type="text"
                                        ph="Masukkan Alamat Anda..." isi="{{$user->alamat_user}}"
                                        icon="fas fa-map-marked-alt" />

                                    <div class="row">
                                        <x-input field="prodi_user" setting="form-control" label="Program Studi"
                                            type="text" ph="Tuliskan Prodi Anda..." isi="{{$user->prodi_user}}" />
                                        <x-input field="fakultas_user" setting="form-control" label="Fakultas"
                                            type="text" ph="Tuliskan Fakultas Anda..." isi="{{$user->fakultas_user}}" />
                                    </div>
                                    <div class="form-group ml-4 mr-3 mt-3 mb-0">
                                        <label class="form-label">Jenis Kelamin</label>
                                        <div class="row">
                                            @if($user->jenis_kelamin_user == 'L' )
                                            <div class="form-check ml-3">
                                                <input checked class="form-check-input" type="radio"
                                                    name="jenis_kelamin_user" id="inlineRadio1" value=" L ">
                                                <label class="form-check-label" for="inlineRadio1"><i
                                                        class="fas fa-mars"> ( L )
                                                    </i></label>
                                            </div>
                                            <div class="form-check ml-2">
                                                <input class="form-check-input" type="radio" name="jenis_kelamin_user"
                                                    id="inlineRadio1" value=" P ">
                                                <label class="form-check-label" for="inlineRadio2"><i
                                                        class="fas fa-venus"> ( P )
                                                    </i></label>
                                            </div>
                                            @elseif($user->jenis_kelamin_user == 'P' )
                                            <div class="form-check ml-3">
                                                <input class="form-check-input" type="radio" name="jenis_kelamin_user"
                                                    id="inlineRadio1" value=" L ">
                                                <label class="form-check-label" for="inlineRadio1"><i
                                                        class="fas fa-mars"> ( L )
                                                    </i></label>
                                            </div>
                                            <div class="form-check ml-2">
                                                <input checked class="form-check-input" type="radio"
                                                    name="jenis_kelamin_user" id="inlineRadio1" value=" P ">
                                                <label class="form-check-label" for="inlineRadio2"><i
                                                        class="fas fa-venus"> ( P )
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
                                    <div class="card-footer text-right">
                                        <button class="btn btn-primary">Save Changes</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>
@endsection
