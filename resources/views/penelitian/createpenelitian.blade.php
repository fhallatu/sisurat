@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Tambah Data Penelitian </h1>
        </div>

        <form action="/sipesan/penelitian" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="card">
                <div class="card-header">
                    <h4>Data Penelitian</h4>
                </div>

                <x-input field="skema_penelitian" setting="form-control" label="Skema Penelitian" type="text"
                    ph="Masukkan Skema Penelitian Anda..." isi="" />
                {{--<div class="card-body">
                    <div class="form-group mb-auto">
                        <label>Skema Penelitian</label>
                        <select class="form-control selectric" name="skema_penelitian" id="skema_penelitian">
                            <option selected>--- Pilih Skema ---</option>
                            <option value="Penelitian Strategis Nasional Institusi">Penelitian Strategis Nasional
                                Institusi</option>
                            <option value="Penelitian Pasca Doctor">Penelitian Pasca Doctor</option>
                            <option value="Penelitian Berbasis Kompetensi">Penelitian Berbasis Kompetensi</option>
                            <option value="Penelitian Disertasi Doktor">Penelitian Disertasi Doktor (PDD)</option>
                            <option value="Penelitian Dasar Unggulan Perguruan Tinggi ">Penelitian Dasar Unggulan
                                Perguruan Tinggi (PDUPT)</option>
                            <option value="Penelitian Terapan Unggulan Perguruan Tinggi">Penelitian Terapan Unggulan
                                Perguruan Tinggi (PTUPT)</option>
                            <option value="Penelitian Kerjasama Luar Negeri">Penelitian Kerjasama Luar Negeri</option>
                            <option value="Penelitian Tim Pasca Sarjana">Penelitian Tim Pasca Sarjana</option>
                            <option value="Penelitian Unggulan Strategis Nasional">Penelitian Unggulan Strategis
                                Nasional</option>
                            <option value="Penelitian Dasar">Penelitian Dasar</option>
                            <option value="Penelitian Terapan">Penelitian Terapan</option>
                            <option value="Penelitian Tesis Magister">Penelitian Tesis Magister</option>
                            <option value="Penelitian Pembinaan UNIB">Penelitian Pembinaan UNIB</option>
                            <option value="Penelitian Unggulan UNIB">Penelitian Unggulan UNIB</option>
                            <option value="Penelitian Kolaborasi Nasional UNIB">Penelitian Kolaborasi Nasional UNIB
                            </option>
                            <option value="Penelitian Kolaborasi Internasional UNIB">Penelitian Kolaborasi Internasional
                                UNIB</option>
                            <option value="Penelitian Mandat UNIB">Penelitian Mandat UNIB</option>
                            <option value="Penelitian Mandiri UNIB">Penelitian Mandiri UNIB</option>
                            <option value="Penelitian Percepatan Guru Besar">Penelitian Percepatan Guru Besar</option>
                            <option value="Penelitian Fundamental UNIB">Penelitian Fundamental UNIB</option>
                        </select>
                    </div>
                </div>--}}

                <x-input field="judul_penelitian" setting="form-control" label="Judul Penelitian" type="text"
                    ph="Masukkan Judul Penelitian Anda..." isi="" />
                <x-input field="tahun_penelitian" setting="form-control" label="Tahun Penelitian" type="number"
                    ph="Masukkan Tahun Penelitian Anda..." isi="" />

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
                            @foreach ($anggotapenelitian as $anggotapenelitian)
                            <option value="{{ $anggotapenelitian->id_anggota }}" @if(in_array($anggotapenelitian->
                                id_anggota,old('anggota',[]))) @endif>
                                {{ $anggotapenelitian->nama_anggota }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="d-flex justify-content-between ml-4 mb-2">
                    <a href='/sipesan/anggotapenelitian/create' class="btn btn-danger btn-sm btn-info">Belum Ada Nama
                        Anggota?</a>
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
    <a href='/sipesan/penelitian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
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
