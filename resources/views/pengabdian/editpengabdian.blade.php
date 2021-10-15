@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Edit Data Pengabdian </h1>
        </div>

        <form action="/sipesan/pengabdian/{{$pengabdian->id_pengabdian}}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

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
                            <option value="Pengabdian Pembinaan"
                                {{ $pengabdian->skema_pengabdian == ('Pengabdian Pembinaan') ? 'selected' : '' }}>
                                Pengabdian Pembinaan</option>
                            <option value="Pengabdian Berbasis IPTEKS"
                                {{ $pengabdian->skema_pengabdian == ('Pengabdian Berbasis IPTEKS') ? 'selected' : '' }}>
                                Pengabdian Berbasis IPTEKS</option>
                            <option value="Pengabdian Berbasis Riset"
                                {{ $pengabdian->skema_pengabdian == ('Pengabdian Berbasis Riset') ? 'selected' : '' }}>
                                Pengabdian Berbasis Riset</option>
                            <option value="Pengabdian Mandiri"
                                {{ $pengabdian->skema_pengabdian == ('Pengabdian Mandiri') ? 'selected' : '' }}>
                                Pengabdian Mandiri</option>
                            <option value="Pengabdian Dana PNPB Fakultas"
                                {{ $pengabdian->skema_pengabdian == ('Pengabdian Dana PNPB Fakultas') ? 'selected' : '' }}>
                                Pengabdian Dana PNPB Fakultas</option>
                            <option value="Pengabdian DRPM"
                                {{ $pengabdian->skema_pengabdian == ('Pengabdian DRPM') ? 'selected' : '' }}>
                                Pengabdian DRPM</option>
                        </select>
                    </div>
                </div>--}}

                <x-input field="judul_pengabdian" setting="form-control" label="Judul Pengabdian" type="text"
                    ph="Masukkan Judul Pengabdian Anda..." isi="{{ $pengabdian->judul_pengabdian }}" />
                <x-input field="tahun_pengabdian" setting="form-control" label="Tahun Pengabdian" type="number"
                    ph="Masukkan Tahun Pengabdian Anda..." isi="{{ $pengabdian->tahun_pengabdian }}" />

                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label>NIP Ketua</label>
                        <select class="selectpicker form-control" name="id_user" id="id_user" data-live-search="true">
                            @foreach ($user as $user)
                            <option value="{{ $user->id_user }}"
                                {{ $pengabdian->id_user == $user->id_user ? 'selected' : '' }}>{{ $user->nip_user }} ~ (
                                {{ $user->nama_user }} )
                            </option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label>Nama Anggota</label>
                        <select class="selectpicker form-control" name="id_anggota[]" multiple data-live-search="true">
                            @foreach ($anggotapengabdian as $item)
                            <option value="{{ $item->id_anggota }}" @foreach ($pengabdian->anggotapengabdians as $nilai)
                                @if($item->id_anggota == $nilai->id_anggota)
                                selected
                                @endif
                                @endforeach
                                >{{ $item->nama_anggota }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="d-flex justify-content-between ml-4 mb-2">
                    <a href='/sipesan/anggotapengabdian/create' class="btn btn-danger btn-sm btn-info">Belum Ada Nama
                        Anggota?</a>
                </div>
            </div>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <a href='/sipesan/pengabdian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
                <button type="submit" class="btn btn-primary btn-lg mt-3 mr-2">Simpan</button>
            </div>
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
