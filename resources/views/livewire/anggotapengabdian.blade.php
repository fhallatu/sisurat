<div>
    @if (session()->has('message'))
    <div class="alert alert-success">
        {{ session('message') }}
    </div>
    @endif
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1> Tambah Data Anggota </h1>
            </div>
            <form action="#" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="card">
                    <div class="card-header">
                        <h4>Anggota</h4>
                    </div>

                    <div class="row">
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">Nama</label>
                                <input type="text" class="form-control" wire:model="nama_anggota.0"
                                    placeholder="Tuliskan Nama Anggota..." value="" />
                                @error('nama_anggota.0') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">NIP / NIDN / NPM</label>
                                <input type="text" class="form-control" wire:model="no_identitas.0"
                                    placeholder="Tuliskan NIP / NIDN / NPM Anggota..." value="" />
                                @error('no_identitas.0') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">Program Studi</label>
                                <input type="text" class="form-control" wire:model="prodi_anggota.0"
                                    placeholder="Tuliskan Program Studi Anggota..." value="" />
                                @error('prodi_anggota.0') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">Fakultas</label>
                                <input type="text" class="form-control" wire:model="fakultas_anggota.0"
                                    placeholder="Tuliskan Fakultas Anggota..." value="" />
                                @error('fakultas_anggota.0') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                        </div>
                    </div>

                    @foreach($inputs as $key => $value)
                    <div class="card-header">
                        <h4>Anggota</h4> <button wire:click.prevent="remove({{$key}})"
                            class="btn btn-danger btn-lg ml-3" type="button"><i class="fas fa-times"></i></button>
                    </div>
                    <div class="row">
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">Nama</label>
                                <input type="text" class="form-control" wire:model="nama_anggota.{{$value}}"
                                    placeholder="Tuliskan Nama Anggota..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">NIP / NIDN / NPM</label>
                                <input type="text" class="form-control" wire:model="no_identitas.{{$value}}"
                                    placeholder="Tuliskan NIP / NIDN / NPM Anggota..." value="" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">Program Studi</label>
                                <input type="text" class="form-control" wire:model="prodi_anggota.{{$value}}"
                                    placeholder="Tuliskan Program Studi Anggota..." value="" />
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group mb-auto">
                                <label for="$nama_anggota">Program Studi</label>
                                <input type="text" class="form-control" wire:model="fakultas_anggota.{{$value}}"
                                    placeholder="Tuliskan Fakultas Anggota..." value="" />
                            </div>
                        </div>
                    </div>
                    @endforeach

                    <button wire:click.prevent="add({{$i}})" class="btn btn-success btn-sm add-more ml-3 mb-3 mr-3"
                        type="button"><i class="fas fa-plus"></i></button>

            </form>
    </div>
    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
        <a href='/sipesan/penelitian/create' class="btn btn-danger btn-lg mt-3 me-md-2 mr-2">Kembali</a>
        <button type="submit" wire:click.prevent="store()" class="btn btn-primary btn-lg mt-3 ">Submit</button>
    </div>
</div>
