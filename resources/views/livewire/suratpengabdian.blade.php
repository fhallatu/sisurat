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
    <form action="/sipesan/pengabdian" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="card">
            <div class="card-header">
                <h4>Data Surat Pengabdian</h4>
            </div>

            <div class="card-body">
                <div class="form-group mb-auto">
                    <label>Judul Pengabdian</label>
                    <select wire:model="id_pengabdian" class="form-control" id="judul_pengabdian">
                        <option selected>--- Pilih Judul Pengabdian ---</option>
                        @foreach ($pengabdian as $pengabdian)
                        <option value="{{ $pengabdian->id_pengabdian }}">{{ $pengabdian->judul_pengabdian }}</option>
                        @endforeach
                    </select>
                    <div class="spinner-border text-info mt-2" role="status" wire:loading wire:target="id_pengabdian">
                    </div>
            

            {{-- <x-input field="judul_penelitian" setting="form-control" label="Judul Penelitian" type="text"
            ph="Masukkan Judul Penelitian Anda..." isi="" /> --}}

            <x-input field="skema_pengabdian" setting="form-control" label="Skema Pengabdian" type="text" ph=""
                isi="{{ $skema_pengabdian }}" disabled />

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
            @foreach ($anggotapengabdians as $item)
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
                    <label>Jenis Surat Pengabdian</label>
                    <select wire:model="jenis_suratpengabdian" class="form-control" id="jenis_suratpengabdian">
                        <option selected>--- Pilih Jenis Surat ---</option>
                        <option value="surat tugas">Surat Tugas</option>
                        <option value="surat keterangan">Surat Keterangan</option>
                    </select>
                </div>
            </div>
            @if( $isSurat == 'surat tugas')
            <div class="card-body">
                <div class="form-group mb-auto">
                    <label>Jenis Surat Tugas</label>
                    <select wire:model="jenis_surattugas" class="form-control" id="jenis_surattugas">
                        <option selected>--- Pilih Jenis Surat Tugas ---</option>
                        <option value="surat permohonan mitra">Surat Permohonan Mitra</option>
                        <option value="proposal">Proposal</option>
                    </select>
                </div>
            </div>
            @else
            @endif

            @if($isSurat=='surat keterangan')
            <div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$nama_mitra">Nama Mitra</label>
                        <input type="text" class="form-control" wire:model="nama_mitra"
                            placeholder="Tuliskan Nama Mitra..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$no_srt_mitra">Nomor Surat Keterangan dari Mitra</label>
                        <input type="text" class="form-control" wire:model="no_srt_mitra"
                            placeholder="Tuliskan Nomor Surat Keterangan dari Mitra..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$tgl_srt_mitra">Tanggal Surat Keterangan dari Mitra</label>
                        <input type="date" class="form-control" wire:model="tgl_srt_mitra"
                            placeholder="Tuliskan Tanggal Surat Keterangan dari Mitra..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label>Luaran Kegiatan</label>
                        <select wire:model="luaran_keg" class="form-control" id="luaran_keg">
                            <option selected>--- Pilih Luaran Kegiatan ---</option>
                            <option value="jurnal">Jurnal</option>
                            <option value="berita">Berita</option>
                            <option value="booklet">Booklet</option>
                            <option value="youtube">Youtube</option>
                        </select>
                    </div>
                </div>
            </div>
            @else
            @endif

            @if( $thisSurat=='surat permohonan mitra')
            <div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$tgl_srt_permohonan">Tanggal Surat Permohonan</label>
                        <input type="date" class="form-control" wire:model="tgl_srt_permohonan"
                            placeholder="Tuliskan Tanggal Surat Permohonan..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$no_srt_permohonan">Nomor Surat Permohonan</label>
                        <input type="text" class="form-control" wire:model="no_srt_permohonan"
                            placeholder="Tuliskan Nomor Surat Permohonan..." value="" />
                    </div>
                </div>
                {{--<div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_srt_permohonan">File Surat Permohonan</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_srt_permohonan" name="file_srt_permohonan"
                                        wire:model="file_srt_permohonan">
                                    <label class="input-group-text" for="file_srt_permohonan">Upload</label>
                                </div>
                            </div>
                        </div>--}}
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$tgl_keg_pengabdian">Tanggal Kegiatan Pengabdian</label>
                        <input type="date" class="form-control" wire:model="tgl_keg_pengabdian"
                            placeholder="Tuliskan Tanggal Kegiatan Pengabdian..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$tgl_sls_keg">Tanggal Selesai Kegiatan Pengabdian</label>
                        <input type="date" class="form-control" wire:model="tgl_sls_keg"
                            placeholder="Tuliskan Tanggal Selesai Kegiatan Pengabdian..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$lok_keg_pengabdian">Lokasi Kegiatan Pengabdian</label>
                        <input type="text" class="form-control" wire:model="lok_keg_pengabdian"
                            placeholder="Tuliskan Lokasi Kegiatan Pengabdian..." value="" />
                    </div>
                </div>
            </div>
            @else
            @endif

            @if( $thisSurat=='proposal')
            {{--<div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_proposal">File Proposal</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_proposal"
                                        wire:model="file_proposal">
                                    <label class="input-group-text" for="file_proposal">Upload</label>
                                </div>
                            </div>
                        </div>
                    </div>--}}
            @else
            @endif

            @if( $isLuaran=='jurnal')
            <div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$judul_jurnal">Judul Jurnal / Artikel</label>
                        <input type="text" class="form-control" wire:model="judul_jurnal"
                            placeholder="Tuliskan Judul Jurnal / Artikel..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$pub_jurnal">Tempat Publikasi dan Volume ( Nomor ) Jurnal</label>
                        <input type="text" class="form-control" wire:model="pub_jurnal"
                            placeholder="Tuliskan Tempat Publikasi dan Volume ( Nomor ) Jurnal..." value="" />
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$link_kegiatan">Link Jurnal / Artikel</label>
                        <input type="text" class="form-control" wire:model="link_kegiatan"
                            placeholder="Tuliskan Link Jurnal / Artikel..." value="" />
                    </div>
                </div>
                {{--<div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_jurnal">File Jurnal</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_jurnal" wire:model="file_jurnal">
                                    <label class="input-group-text" for="file_jurnal">Upload</label>
                                </div>
                            </div>
                        </div>--}}
            </div>
            @else
            @endif

            @if( $isLuaran=='berita')
            <div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$link_kegiatan">Link Berita</label>
                        <input type="text" class="form-control" wire:model="link_kegiatan"
                            placeholder="Tuliskan Link Berita..." value="" />
                    </div>
                </div>
            </div>
            @else
            @endif

            @if( $isLuaran=='booklet')
            {{--<div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$file_booklet">File Booklet</label>
                                <div class="input-group mb-3">
                                    <input type="file" class="form-control" id="file_booklet" wire:model="file_booklet">
                                    <label class="input-group-text" for="file_booklet">Upload</label>
                                </div>
                            </div>
                        </div>
                    </div>--}}
            @else
            @endif

            @if( $isLuaran=='youtube')
            <div>
                <div class="card-body">
                    <div class="form-group mb-auto">
                        <label for="$link_kegiatan">Link Youtube</label>
                        <input type="text" class="form-control" wire:model="link_kegiatan"
                            placeholder="Tuliskan Link Youtube..." value="" />
                    </div>
                </div>
            </div>
            @else
            @endif
        </div>
        </div>
    </div>
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <a href='/sipesan/surat/pengabdian' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
            <button type="submit" wire:click.prevent="store()" class="btn btn-primary btn-lg mt-3 ">Simpan</button>
        </div>
    </form>
</div>

@push('script')
<script src="{{ asset('/assets/js/page/components-multiple-upload.js') }}"></script>
<script src="{{ asset('/node_modules/dropzone/dist/min/dropzone.min.js') }}"></script>
@endpush
@push('style')
<link rel="stylesheet" href="{{ asset('/node_modules/dropzone/dist/min/dropzone.min.css') }}">
@endpush
