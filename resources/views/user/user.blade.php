@extends('layouts.master')

@section('content')

<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Manajemen User </h1> <a href='/sipesan/user/create' class="btn btn-primary ml-3">+</a>
        </div>

        <div class="row">
            @foreach ($user as $users)
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card">
                    @if($users->foto_profil != null)
                    <img src="{{ asset('foto_profile/'.$users->foto_profil) }}" class="card-img-top rounded"
                        alt="Card image cap" />
                    @else
                    <img src="{{ asset('assets/img/avatar/avatar-1.png') }}" class="card-img-top rounded"
                        alt="Card image cap" />
                    @endif
                    <div class="card-img-overlay">
                        <div class="dropdown d-grid gap-2 d-md-flex justify-content-md-end">
                            <a href="#" data-toggle="dropdown" class="btn btn-info dropdown "><i
                                    class="fas fa-ellipsis-v"></i></a>
                            <div class="dropdown-menu">
                                <a href="/sipesan/user/{{$users->id_user}}/detail" class="dropdown-item has-icon"><i
                                        class="fas fa-eye"></i> View</a>
                                <a href="/sipesan/user/{{$users->id_user}}/edit" class="dropdown-item has-icon"><i
                                        class="far fa-edit"></i> Edit</a>

                                <div class="dropdown-divider"></div>
                                <a href="#" users-id="{{ $users->id_user }}" users-nama="{{ $users->nama_user }}"
                                    class="deleteUser btn btn-danger btn-lg ml-5"><i
                                        class="far fa-trash-alt mr-2"></i>Delete</a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
                        <h5 class="card-title">{{$users->nama_user}}</h5>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">NIP / NIK : {{$users->nip_user}}</li>
                        <li class="list-group-item">Hak Akses : <a href="#" class="btn btn-info" tabindex="-1"
                                role="button" aria-disabled="true">{{$users->hak_akses}}</a></li>
                        <li class="list-group-item">Status : 
                            @if($users->status=="nonaktif")
                            <span class="badge badge-danger">{{$users->status}}</span>
                            @elseif($users->status=="pending")
                            <span class="badge badge-warning">{{$users->status}}</span>
                            @elseif($users->status=="aktif")
                            <span class="badge badge-success">{{$users->status}}</span>
                            @endif
                    </ul>
                </div>
            </div>
            @endforeach

        </div>
        {{ $user->links() }}
    </section>
</div>
@endsection

@push('script')
<script>
    $('.deleteUser').click(function () {
        var usersId = $(this).attr('users-id');
        var usersNama = $(this).attr('users-nama');
        swal({
            title: "Hapus User",
            text: "Apakah anda yakin ingin menghapus " + usersNama + " ?",
            icon: "warning",
            buttons: ["Jangan Hapus", "Hapus"],
            dangerMode: true,
            closeOnClickOutside: false,
        }).then((willDelete) => {
            if (willDelete) {
                window.location = "/sipesan/user/delete/" + usersId + "";
            } else {
                swal("" + usersNama + " tidak jadi dihapus.");
            }
        });
    });

</script>
@endpush
