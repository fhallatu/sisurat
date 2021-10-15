@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Edit Data Penelitian </h1>
        </div>

        <form action="/sipesan/penelitian/{{$penelitian->id_penelitian}}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="card">
                <div class="card-header">
                    <h4>Data Penelitian</h4>
                </div>

                <x-input field="skema_penelitian" setting="form-control" label="Skema Penelitian" type="text"
                    ph="Masukkan Judul Penelitian Anda..." isi="{{ $penelitian->skema_penelitian }}" />
                {{--<div class="card-body">
                    <div class="form-group mb-auto">
                        <label>Skema Penelitian</label>
                        <select class="form-control selectric" name="skema_penelitian" id="skema_penelitian">
                            <option selected>--- Pilih Skema ---</option>
                            <option value="Penelitian Strategis Nasional Institusi"
                                {{ $penelitian->skema_penelitian == ('Penelitian Strategis Nasional Institusi') ? 'selected' : '' }}>
                                Penelitian Strategis Nasional
                                Institusi</option>
                            <option value="Penelitian Pasca Doctor"
                                {{ $penelitian->skema_penelitian == ('Penelitian Pasca Doctor') ? 'selected' : '' }}>
                                Penelitian Pasca Doctor</option>
                            <option value="Penelitian Berbasis Kompetensi"
                                {{ $penelitian->skema_penelitian == ('Penelitian Berbasis Kompetensi') ? 'selected' : '' }}>
                                Penelitian Berbasis Kompetensi</option>
                            <option value="Penelitian Disertasi Doktor"
                                {{ $penelitian->skema_penelitian == ('Penelitian Disertasi Doktor') ? 'selected' : '' }}>
                                Penelitian Disertasi Doktor (PDD)</option>
                            <option value="Penelitian Dasar Unggulan Perguruan Tinggi"
                                {{ $penelitian->skema_penelitian == ('Penelitian Dasar Unggulan Perguruan Tinggi') ? 'selected' : '' }}>
                                Penelitian Dasar Unggulan Perguruan Tinggi (PDUPT)</option>
                            <option value="Penelitian Terapan Unggulan Perguruan Tinggi"
                                {{ $penelitian->skema_penelitian == ('Penelitian Terapan Unggulan Perguruan Tinggi') ? 'selected' : '' }}>
                                Penelitian Terapan Unggulan Perguruan Tinggi (PTUPT)</option>
                            <option value="Penelitian Kerjasama Luar Negeri"
                                {{ $penelitian->skema_penelitian == ('Penelitian Kerjasama Luar Negeri') ? 'selected' : '' }}>
                                Penelitian Kerjasama Luar Negeri</option>
                            <option value="Penelitian Tim Pasca Sarjana"
                                {{ $penelitian->skema_penelitian == ('Penelitian Tim Pasca Sarjana') ? 'selected' : '' }}>
                                Penelitian Tim Pasca Sarjana</option>
                            <option value="Penelitian Unggulan Strategis Nasional"
                                {{ $penelitian->skema_penelitian == ('Penelitian Unggulan Strategis Nasional') ? 'selected' : '' }}>
                                Penelitian Unggulan Strategis Nasional</option>
                            <option value="Penelitian Dasar"
                                {{ $penelitian->skema_penelitian == ('Penelitian Dasar') ? 'selected' : '' }}>
                                Penelitian Dasar</option>
                            <option value="Penelitian Terapan"
                                {{ $penelitian->skema_penelitian == ('Penelitian Terapan') ? 'selected' : '' }}>
                                Penelitian Terapan</option>
                            <option value="Penelitian Tesis Magister"
                                {{ $penelitian->skema_penelitian == ('Penelitian Tesis Magister') ? 'selected' : '' }}>
                                Penelitian Tesis Magister</option>
                            <option value="Penelitian Pembinaan UNIB"
                                {{ $penelitian->skema_penelitian == ('Penelitian Pembinaan UNIB') ? 'selected' : '' }}>
                                Penelitian Pembinaan UNIB</option>
                            <option value="Penelitian Unggulan UNIB"
                                {{ $penelitian->skema_penelitian == ('Penelitian Unggulan UNIB') ? 'selected' : '' }}>
                                Penelitian Unggulan UNIB</option>
                            <option value="Penelitian Kolaborasi Nasional UNIB"
                                {{ $penelitian->skema_penelitian == ('Penelitian Kolaborasi Nasional UNIB') ? 'selected' : '' }}>
                                Penelitian Kolaborasi Nasional UNIB
                            </option>
                            <option value="Penelitian Kolaborasi Internasional UNIB"
                                {{ $penelitian->skema_penelitian == ('Penelitian Kolaborasi Internasional UNIB') ? 'selected' : '' }}>
                                Penelitian Kolaborasi Internasional
                                UNIB</option>
                            <option value="Penelitian Mandat UNIB"
                                {{ $penelitian->skema_penelitian == ('Penelitian Mandat UNIB') ? 'selected' : '' }}>
                                Penelitian Mandat UNIB</option>
                            <option value="Penelitian Mandiri UNIB"
                                {{ $penelitian->skema_penelitian == ('Penelitian Mandiri UNIB') ? 'selected' : '' }}>
                                Penelitian Mandiri UNIB</option>
                            <option value="Penelitian Percepatan Guru Besar"
                                {{ $penelitian->skema_penelitian == ('Penelitian Percepatan Guru Besar') ? 'selected' : '' }}>
                                Penelitian Percepatan Guru Besar</option>
                            <option value="Penelitian Fundamental UNIB"
                                {{ $penelitian->skema_penelitian == ('Penelitian Fundamental UNIB') ? 'selected' : '' }}>
                                Penelitian Fundamental UNIB</option>
                        </select>
                    </div>
                </div>--}}

                <x-input field="judul_penelitian" setting="form-control" label="Judul Penelitian" type="text"
                    ph="Masukkan Judul Penelitian Anda..." isi="{{ $penelitian->judul_penelitian }}" />
                <x-input field="tahun_penelitian" setting="form-control" label="Tahun Penelitian" type="number"
                    ph="Masukkan Tahun Penelitian Anda..." isi="{{ $penelitian->tahun_penelitian }}" />

                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label>NIP Ketua</label>
                        <select class="selectpicker form-control" name="id_user" id="id_user" data-live-search="true">
                            @foreach ($users as $user)
                            <option value="{{ $user->id_user }}"
                                {{ $penelitian->id_user == $user->id_user ? 'selected' : '' }}>{{ $user->nip_user }} ~ (
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
                            @foreach ($anggotapenelitian as $item)
                            <option value="{{ $item->id_anggota }}" @foreach ($penelitian->anggotapenelitians as $nilai)
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
                    <a href='/sipesan/anggotapenelitian/create' class="btn btn-danger btn-sm btn-info">Belum Ada Nama
                        Anggota?</a>
                </div>
            </div>

            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <a href='/sipesan/penelitian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
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
