<div>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <form action="/sipesan/penelitian" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="card">
            <div class="card-header">
                <h4>Data Surat Penelitian</h4>
            </div>
            
            <div class="card-body">
                <div class="form-group mb-auto">
                    <label>Judul Penelitian</label>
                    <select wire:model="id_penelitian" class="form-control" id="judul_penelitian">
                        <option selected>--- Pilih Judul Penelitian ---</option>
                        @foreach ($penelitian as $penelitian)
                        <option value="{{ $penelitian->id_penelitian }}">{{ $penelitian->judul_penelitian }}</option>
                        @endforeach
                    </select>
                    <div class="spinner-border text-info mt-2" role="status" wire:loading wire:target="id_penelitian">
                    </div>
            

            {{-- <x-input field="judul_penelitian" setting="form-control" label="Judul Penelitian" type="text"
            ph="Masukkan Judul Penelitian Anda..." isi="" /> --}}

            <x-input field="skema_penelitian" setting="form-control" label="Skema Penelitian" type="text" ph=""
                isi="{{ $skema_penelitian }}" disabled />

            <div class="card-header">
                <h4>Ketua</h4>
            </div>
            <x-input field="nama_user" setting="form-control" label="Nama Ketua" type="text" ph=""
                isi="{{ $nama_user }}" disabled />

            <x-input field="nip_user" setting="form-control" label="NIP" type="text" ph="" isi="{{ $nip_user }}"
                disabled />

            <x-input field="nidn_user" setting="form-control" label="NIDN" type="text" ph="" isi="{{ $nidn_user }}"
                disabled />

            <x-input field="fakultas_user" setting="form-control" label="Fakultas" type="text" ph=""
                isi="{{ $fakultas_user }}" disabled />

            <x-input field="prodi_user" setting="form-control" label="Prodi" type="text" ph="" isi="{{ $prodi_user }}"
                disabled />

            {{-- ANGGOTA --}}

            @if ($anggotaForeach == true)
            @foreach ($anggotapenelitians as $item)
            <div class="card-header">
                <h4>Anggota</h4>
            </div>
            <div class="row">
                <x-input field="nama_anggota" setting="form-control" label="Nama Anggota" type="text" ph=""
                    isi="{{ $item->nama_anggota }}" disabled />

                <x-input field="no_identitas" setting="form-control" label="NIP / NPM" type="text" ph=""
                    isi="{{ $item->no_identitas }}" disabled />
            </div>
            {{--<x-input field="prodi_user" setting="form-control" label="Jabatan" type="text" ph=""
                isi="{{ $item->prodi_user }}" disabled />--}}
            <div class="row">
                <x-input field="fakultas_anggota" setting="form-control" label="Fakultas Anggota" type="text" ph=""
                    isi="{{ $item->fakultas_anggota }}" disabled />

                <x-input field="prodi_anggota" setting="form-control" label="Prodi Anggota" type="text" ph=""
                    isi="{{ $item->prodi_anggota }}" disabled />
            </div>
            @endforeach
            @endif

            <div class="card-body">
                <div class="form-group mb-auto">
                    <label>Jenis Surat Penelitian</label>
                    <select wire:model="jenis_suratpenelitian" class="form-control" id="jenis_suratpenelitian">
                        <option selected>--- Pilih Jenis Surat ---</option>
                        <option value="surat tugas">Surat Tugas</option>
                        <option value="surat keterangan">Surat Keterangan</option>
                    </select>
                </div>
            </div>
                    @if( $isSurat == 'surat tugas')
                    <div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$tj_keg_penelitian">Tujuan Kegiatan Penelitian</label>
                                <input type="text" class="form-control" wire:model="tj_keg_penelitian"
                                    placeholder="Tuliskan Tujuan Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$lok_keg_penelitian">Lokasi Kegiatan Penelitian</label>
                                <input type="text" class="form-control" wire:model="lok_keg_penelitian"
                                    placeholder="Tuliskan Lokasi Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$tgl_keg_penelitian">Tanggal Mulai Kegiatan Penelitian</label>
                                <input type="date" class="form-control" wire:model="tgl_keg_penelitian"
                                    placeholder="Tuliskan Tanggal Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$tgl_sls_keg">Tanggal Selesai Kegiatan Penelitian</label>
                                <input type="date" class="form-control" wire:model="tgl_sls_keg"
                                    placeholder="Tuliskan Tanggal Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                    </div>
                    @else
                    @endif
                    @if($isSurat=='surat keterangan')
                    <div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$jk_waktu_penelitian">Jangka Waktu Kegiatan Penelitian</label>
                                <input type="text" class="form-control" wire:model="jk_waktu_penelitian"
                                    placeholder="Tuliskan Jangka Waktu Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$thn_pelaksanaan">Tahun Pelaksanaan Kegiatan Penelitian</label>
                                <input type="number" class="form-control" wire:model="thn_pelaksanaan"
                                    placeholder="Tuliskan Tahun Pelaksanaan Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$smbr_dana_penelitian">Sumber Dana Kegiatan Penelitian</label>
                                <input type="text" class="form-control" wire:model="smbr_dana_penelitian"
                                    placeholder="Tuliskan Sumber Dana Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$jmlh_dana_penelitian">Jumlah Dana Kegiatan Penelitian</label>
                                <input type="number" class="form-control" wire:model="jmlh_dana_penelitian"
                                    placeholder="Tuliskan Jumlah Dana Kegiatan Penelitian..." value="" />
                            </div>
                        </div>
                    </div>
                    @else
                    @endif
                </div>
            </div>
</div>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <a href='/sipesan/surat/penelitian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
    <button type="submit" wire:click.prevent="store()" class="btn btn-primary btn-lg mt-3 ">Submit</button>
</div>
</form>
</div>

{{--@push('script')
<script src="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js') }}"></script>
<script type='text/javascript'>
    $(window).load(function () {
        $("#jenis_suratpenelitian").change(function () {
            console.log($("#jenis_suratpenelitian option:selected").val());
            if ($("#jenis_suratpenelitian option:selected").val() == 'surat-tugas') {
                $('#surat_tugas').prop('hidden', false);
            } else {
                $('#surat_tugas').prop('hidden', true);
            }
            if ($("#jenis_suratpenelitian option:selected").val() == 'surat-keterangan') {
                $('#surat_keterangan').prop('hidden', false);
            } else {
                $('#surat_keterangan').prop('hidden', true);
            }
        });
    });

</script>
@endpush--}}
