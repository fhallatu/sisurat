@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Tambah Data Pengabdian </h1>
        </div>
        
        <form action="/sipesan/pengabdian" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="card">
                <div class="card-header">
                    <h4>Data Pengabdian</h4>
                </div>
                
                <x-input field="skema_pengabdian" setting="form-control" label="Skema Pengabdian" type="text"
                    ph="Masukkan Skema Pengabdian Anda..." isi="{{ $pengabdian->skema_pengabdian }}" />
                {{--<div class="card-body">
                    <div class="form-group mb-auto">
                        <label>Skema Pengabdian</label>
                        <select class="form-control selectric" name="skema_pengabdian" id="skema_pengabdian">
                            <option value="" selected>--- Pilih Skema ---</option>
                            <option value="Pengabdian Pembinaan">Pengabdian Pembinaan</option>
                            <option value="Pengabdian Berbasis IPTEKS">Pengabdian Berbasis IPTEKS</option>
                            <option value="Pengabdian Berbasis Riset">Pengabdian Berbasis Riset</option>
                            <option value="Pengabdian Mandiri">Pengabdian Mandiri</option>
                            <option value="Pengabdian Dana PNPB Fakultas">Pengabdian Dana PNPB Fakultas</option>
                            <option value="Pengabdian DRPM">Pengabdian DRPM</option>
                        </select>
                    </div>
                </div>--}}
                
                <x-input field="judul_pengabdian" setting="form-control" label="Judul Pengabdian" type="text"
                ph="Masukkan Judul Pengabdian Anda..." isi="" />
                <x-input field="tahun_pengabdian" setting="form-control" label="Tahun Pengabdian" type="number"
                ph="Masukkan Tahun Pengabdian Anda..." isi="" />
                
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label>NIP Ketua</label>
                        <select class="selectpicker form-control" name="id_user" id="id_user" data-live-search="true">
                            @foreach ($user as $user)
                            <option value="{{ $user->id_user }}">{{ $user->nip_user }} ~ ( {{ $user->nama_user }} )
                            </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label>Nama Anggota</label>
                        <select class="selectpicker form-control" name="id_anggota[]" multiple data-live-search="true">
                            @foreach ($anggotapengabdian as $anggotapengabdian)
                            <option value="{{ $anggotapengabdian->id_anggota }}" @if(in_array($anggotapengabdian->id_anggota,old('anggota',[]))) @endif>
                                {{ $anggotapengabdian->nama_anggota }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    
                    <div class="d-flex justify-content-between ml-4 mb-2">
                        <a href='/sipesan/anggotapengabdian/create' class="btn btn-danger btn-sm btn-info">Belum Ada Nama Anggota?</a>
                    </div>
                    {{--<x-input field="nip" setting="form-control" label="NIP" type="text" ph="Masukkan Nip Ketua" isi="" onkeyup="autofill()"/>
                    <x-input field="nidn" setting="form-control" label="NIDN" type="text" ph="Masukkan NIDN Ketua" isi=""/>
                    <x-input field="nama" setting="form-control" label="Nama Ketua" type="text" ph="Tuliskan Nama Anda..." isi=""/>
                    <div class="row">
                        <x-input field="prodi" setting="form-control" label="Prodi" type="text" ph="Tuliskan Prodi Anda..." isi=""/><x-input field="fakultas" setting="form-control" label="Fakultas" type="text" ph="Tuliskan Fakultas Anda..." isi=""/>
                    </div> --}}
                </div>
            </div>
        </div>
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <a href='/sipesan/pengabdian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
            <button type="submit" class="btn btn-primary btn-lg mt-3 mr-2">Submit</button>
        </div>
    </form>
</div>

@endsection

@push('style')
<link href="{{ asset('assets/select/css/bootstrap-select.min.css') }}" rel="stylesheet">
@endpush
@push('script')
<script type="text/javascript" src="{{ asset('assets/select/js/bootstrap-select.min.js') }}"></script>
@endpush
