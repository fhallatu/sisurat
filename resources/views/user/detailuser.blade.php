@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>{{ $user->nama_user }}</h1>
        </div>
        <div class="section-body">
            <h2 class="section-title">Hi, {{ $user->nama_user }} !</h2>
            <p class="section-lead">
                Information about {{ $user->nama_user }} on this page.
            </p>

            <div class="card profile-widget">
                <div class="profile-widget-header">
                    <img alt="image" src="{{ asset('assets/img/avatar/avatar-1.png') }}"
                        class="rounded-circle profile-widget-picture">
                    <div class="profile-widget-items">
                        <div class="profile-widget-item">
                            <div class="profile-widget-name">
                                <h4>{{ $user->nama_user }}</h4>
                                <div class="text-muted d-inline font-weight-normal">
                                    <h5>{{ $user->hak_akses }}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="profile-widget-description">
                    <div class="profile-widget-name text-primary mb-3">
                        <h4>Data Profile</h4>
                    </div>

                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Nama</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm" id="nama_user"
                                placeholder="" value="{{ $user->nama_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">NIP /
                            NIK</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="nip_user"
                                placeholder="" value="{{ $user->nip_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">NIDN</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="nidn_user"
                                placeholder="" value="{{ $user->nidn_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control form-control-sm ml-auto" id="email_user"
                                placeholder="" value="{{ $user->email_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Telepon</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="no_hp_user"
                                placeholder="" value="{{ $user->no_hp_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Alamat</label>
                        <div class="col-sm-9">
                            <textarea class="form-control summernote-simple" value="{{ $user->alamat_user }}"
                                disabled>{{ $user->alamat_user }}</textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Tanggal
                            Lahir</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control form-control-sm ml-auto" id="tgl_lahir_user"
                                placeholder="" value="{{ $user->tgl_lahir_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Jenis
                            Kelamin</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="jenis_kelamin_user"
                                placeholder="" value="{{ $user->jenis_kelamin_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Program
                            Studi</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="prodi_user"
                                placeholder="" value="{{ $user->prodi_user }}" disabled>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm ">Fakultas</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control form-control-sm ml-auto" id="fakultas_user"
                                placeholder="" value="{{ $user->fakultas_user }}" disabled>
                        </div>
                    </div>
                </div>
            </div>
            <a href='/sipesan/user' class="btn btn-danger btn-lg mt-3 ml-auto">Kembali</a>
    </section>
</div>
@endsection
