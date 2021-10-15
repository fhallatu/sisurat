@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Dashboard</h1>
        </div>

        <div class="row">
            <div class="col-12 col-md-6 col-lg-6">
                <a href="/sipesan/surat/penelitian/create">
                    <div class="card">
                        <div class="card-header">
                            <h4><strong>USULAN SURAT PENELITIAN</strong></h4>
                        </div>
                            <button class="btn btn-lg btn-primary mb-3 ml-3 mr-3" type="button">Buat Usulan Surat Penelitian</button>
                    </div>
                </a>
            </div>
            <div class="col-12 col-md-6 col-lg-6">
                <a href="/sipesan/surat/pengabdian/create">
                    <div class="card">
                        <div class="card-header">
                            <h4><strong>USULAN SURAT PENGABDIAN</strong></h4>
                        </div>
                            <button class="btn btn-lg btn-primary mb-3 ml-3 mr-3" type="button">Buat Usulan Surat Pengabdian</button>
                    </div>
                </a>
            </div>
        </div>

        @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses =='staff'))
        <a href="/sipesan/penandatangan/create">
            <div class="card">
                <div class="card-header">
                    <h4><strong>Tambah Penandatangan</strong></h4>
                </div>
                    <button class="btn btn-lg btn-primary mb-3 ml-3 mr-3" type="button">Tambah Data Penandatangan</button>
            </div>
        </a>
        @endif

        <a href='/sipesan/surat/penelitian'>
        <div class="card">
            <div class="card-header">
                <i class="btn btn-primary mr-3 fas fa-hand-point-right"></i><h4><strong>DATA SURAT PENELITIAN</strong></h4>
            </div>
        </div>
        </a>
        <div class="row">
            <div class="col-lg-4">
                <a href="/sipesan/surat/penelitian/antrean">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-danger">
                            <i class="fas fa-clock"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Surat Penelitian Sedang Dalam Antrean</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($suratpenelitian_belumditerima) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4">
                <a href="/sipesan/surat/penelitian/proses">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-warning">
                            <i class="fas fa-hourglass-half"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Surat Penelitian Sedang Di Proses</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($suratpenelitian_sedangdiproses) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4">
                <a href="/sipesan/surat/penelitian/selesai">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-success">
                            <i class="fas fa-envelope-open-text"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Surat Penelitian Selesai</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($suratpenelitian_selesai) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <a href='/sipesan/surat/pengabdian'>
        <div class="card">
            <div class="card-header">
                <i class="btn btn-primary mr-3 fas fa-hand-point-right"></i><h4><strong> DATA SURAT PENGABDIAN </strong></h4>
            </div>
        </div>
        </a>
        <div class="row">
            <div class="col-lg-6">
                <a href="/sipesan/surat/pengabdian/upload">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-info">
                            <i class="fas fa-file-upload"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Surat Pengabdian Upload File</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($suratpengabdian_lengkapifile) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6">
                <a href="/sipesan/surat/pengabdian/antrean">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-danger">
                            <i class="fas fa-clock"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Surat Pengabdian Sedang Dalam Antrean</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($suratpengabdian_belumditerima) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6">
                <a href="/sipesan/surat/pengabdian/proses">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-warning">
                            <i class="fas fa-hourglass-half"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Surat Pengabdian Sedang Di Proses</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($suratpengabdian_sedangdiproses) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6">
                <a href="/sipesan/surat/pengabdian/selesai">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-success">
                            <i class="fas fa-envelope-open-text"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Surat Pengabdian Selesai</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($suratpengabdian_selesai) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses =='staff'))
        <div class="card">
            <div class="card-header">
                <h4><strong>DATA PENELITIAN DAN PENGABDIAN</strong></h4>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <a href="/sipesan/penelitian">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-danger">
                            <i class="fas fa-file-contract"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Penelitian</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($penelitian) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6">
                <a href="/sipesan/pengabdian">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-primary">
                            <i class="fas fa-file-archive"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Pengabdian</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($pengabdian) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        @endif
        @if(auth()->user()->hak_akses == 'admin')
        <a href='/sipesan/user'>
        <div class="card">
            <div class="card-header">
                <i class="btn btn-primary mr-3 fas fa-hand-point-right"></i><h4><strong>DATA USER</strong></h4>
            </div>
        </div>
        </a>
        <div class="row">
            <div class="col-lg-4">
                <a href="/sipesan/user/nonaktif">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-danger">
                            <i class="fas fa-user-times"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Nonaktif User</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($user_nonaktif) }}
                            </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-4">
                <a href="/sipesan/user/pending">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-warning">
                            <i class="fas fa-user-clock"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Request User</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($user_pending) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4">
                <a href="/sipesan/user/aktif">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-success">
                            <i class="fas fa-user-alt"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4 style="color:black">Active User</h4>
                            </div>
                            <div class="card-body">
                                {{ number_format($user_aktif) }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        @endif
</div>

@endsection
