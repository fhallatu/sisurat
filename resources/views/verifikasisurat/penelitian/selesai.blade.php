@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Data Surat Penelitian Selesai </h1> 
        </div>
    </section>
    <div class="card">
        <div class="card-body">
            <table class="table table-hover table-responsive">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Skema</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Jenis Surat</th>
                        <th scope="col">Nama Ketua</th>
                        <th scope="col">Status</th>
                        <th scope="col">File Surat Penelitian</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        @foreach ($suratpenelitian as $item)
                        <td>{{$loop->iteration}}</td>
                        <td>{{$item->penelitian['skema_penelitian']}}</td>
                        <td>{{$item->penelitian['judul_penelitian']}}</td>
                        <td>{{$item->jenis_suratpenelitian}}</td>
                        <td>{{$item->penelitian->user['nama_user']}}</td>
                        <td>
                            @if($item->status=="dalam antrean")
                            <span class="badge badge-danger">{{$item->status}}</span>
                            @elseif($item->status=="sedang diproses")
                            <span class="badge badge-warning">{{$item->status}}</span>
                            @elseif($item->status=="selesai")
                            <span class="badge badge-success">{{$item->status}}</span>
                            @endif
                        </td>
                        <td class="text-center">
                            <a href="{{ asset('file_suratpenelitian/'. $item->file_suratpenelitian) }}"
                                download='{{ $item->file_suratpenelitian }}' class="download" data-toggle="tooltip"
                                data-placement="top" title="" data-original-title="Unduh">
                                <svg id="Capa_1" enable-background="new 0 0 512 512" height="25" viewBox="0 0 512 512"
                                    width="25" xmlns="http://www.w3.org/2000/svg">
                                    <g>
                                        <path
                                            d="m82.581 330.323h-16.517c-22.804 0-41.29-18.486-41.29-41.29 0-13.682 11.092-24.774 24.774-24.774h33.032v66.064z"
                                            fill="#bd4150" />
                                        <path
                                            d="m396.387 0h-305.548l-8.506 16.516v487.484h388.377l16.516-8.516v-404.645z"
                                            fill="#eceaec" />
                                        <path
                                            d="m90.839 470.71v-470.71c-9.121 0-16.516 7.394-16.516 16.516v478.968c0 9.122 7.395 16.516 16.516 16.516h379.871c9.121 0 16.516-7.395 16.516-16.516h-371.613c-13.683 0-24.774-11.092-24.774-24.774z"
                                            fill="#dad8db" />
                                        <path
                                            d="m487.226 89.421c0-4.38-1.74-8.581-4.838-11.679l-72.908-72.905c-3.097-3.097-7.298-4.837-11.678-4.837h-1.415v82.581c0 4.56 3.697 8.258 8.258 8.258h82.581z"
                                            fill="#dad8db" />
                                        <path
                                            d="m305.548 313.807h-256c-2.896 0-5.677-.497-8.261-1.411l-7.954 13.271v104.333c0 13.683 11.092 24.774 24.774 24.774h247.441l16.516-8.839v-115.612c0-9.122-7.394-16.516-16.516-16.516z"
                                            fill="#e15f78" />
                                        <path
                                            d="m41.29 312.396c-9.6-3.413-16.516-12.592-16.516-23.364v148.645c0 13.682 11.092 24.774 24.774 24.774h256c9.121 0 16.516-7.395 16.516-16.516h-256c-13.682 0-24.774-11.092-24.774-24.774z"
                                            fill="#db4655" />
                                        <g fill="#fff">
                                            <path
                                                d="m260.452 379.25h-16.21v-15.653h18.323c4.565 0 8.258-3.698 8.258-8.258s-3.694-8.258-8.258-8.258h-26.581c-4.565 0-8.258 3.698-8.258 8.258v65.581c0 4.56 3.694 8.258 8.258 8.258s8.258-3.698 8.258-8.258v-25.153h16.21c4.565 0 8.258-3.698 8.258-8.258s-3.694-8.259-8.258-8.259z" />
                                            <path
                                                d="m108.992 346.839h-18.395c-2.194 0-4.298.875-5.847 2.427-1.541 1.549-2.406 3.647-2.406 5.831h-.006v66.065c0 4.56 3.694 8.258 8.258 8.258s8.258-3.698 8.258-8.258v-20.482c3.705-.02 7.778-.038 10.137-.038 15.032 0 27.266-12.069 27.266-26.899.001-14.836-12.233-26.904-27.265-26.904zm0 37.286c-2.339 0-6.371.016-10.056.036-.016-3.81-.056-20.806-.056-20.806h10.113c5.831 0 10.75 4.758 10.75 10.387s-4.92 10.383-10.751 10.383z" />
                                            <path
                                                d="m178.242 347.815h-18.153c-2.194 0-4.298.871-5.847 2.423-1.548 1.552-2.419 3.657-2.411 5.851l.048 31.968c0 8.915.081 32.157.081 32.157.008 2.19.887 4.29 2.444 5.835 1.54 1.532 3.637 2.395 5.815 2.395h.032s13.46-.052 18.669-.141c19.395-.343 33.476-17.238 33.476-40.173-.001-24.114-13.727-40.315-34.154-40.315zm.387 63.971c-2.363.04-6.452.077-10.177.097-.024-7.56-.056-18.375-.056-23.827l-.032-23.726h9.879c16.79 0 17.637 19.823 17.637 23.798-.001 11.626-5.332 23.449-17.251 23.658z" />
                                        </g>
                                        <path
                                            d="m197.935 279.363c-6.371 0-12.129-3.315-16.177-9.569-6.016-9.282-4.435-19.794 4.331-28.843 8.839-9.129 26.927-17.718 48.694-24.73 6.79-12.798 13.702-27.778 20.161-44.339 3.815-9.786 6.895-18.609 9.363-26.5-10.879-19.944-17.347-38.512-15.629-50.569 1.75-12.234 10.887-19.121 24.468-18.371 4.032.218 13.653 2.323 15.976 17.137 1.774 11.327-1.21 29.637-7.194 50.444 11.323 19.101 26.847 39.56 42.032 55.262 22.952-1.399 42.403.274 52.185 6.177 7.661 4.621 10.669 12.157 8.048 20.153-4.29 13.069-14.653 19.056-27.75 16.004-11.024-2.573-24.685-12.198-38.54-25.56-22.282 1.96-48.508 6.496-71.516 13.262-13.734 24.649-28.581 43.839-41.048 48.605-2.516.965-5 1.437-7.404 1.437zm-2.322-18.544c1.379 2.121 2.137 2.077 2.492 2.036 5.258-.536 14.016-9.613 24.016-24.956-6.613 2.835-12.54 5.907-17.524 9.206-12.5 8.278-9.847 12.367-8.984 13.714zm145.484-45.851c7.056 5.516 13.613 9.286 19.097 10.569 4.282.996 6.484.488 8.306-5.065-2.435-3.694-12.798-5.468-27.403-5.504zm-65.589-50.92c-5.379 15.315-11.96 31.173-19.145 46.036 15.476-3.887 31.79-6.948 47.371-8.891-10.073-11.415-19.807-24.237-28.226-37.145zm-3.976-71.427c-5.863 0-6.169 2.198-6.508 4.52-.863 6.101 1.282 14.778 5.516 24.782 3.734-17.827 2.976-27.258 1.161-29.302-.056 0-.112 0-.169 0z"
                                            fill="#e15f78" />
                                    </g>
                                </svg>
                            </a>
                        </td>
                        <td>
                            <div class='d-flex flex-row bd-highlight'>
                                @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses == 'staff'))
                                <a href='/sipesan/surat/penelitian/{{ $item->id_srtpenelitian }}/edit'
                                    class="btn btn-sm btn-primary ml-1"><i class="fas fa-edit"></i></a>
                                @endif

                                <a href="#" srtpenelitian-id="{{ $item->id_srtpenelitian }}"
                                    srtpenelitian-jenis="{{ $item->jenis_suratpenelitian }}"
                                    class="deleteSrtPenelitian btn btn-sm btn-danger ml-1"><i
                                        class="far fa-trash-alt"></i></a>

                                <a href='/sipesan/surat/penelitian/{{$item->id_srtpenelitian}}/detail'
                                    class="btn btn-sm btn-info ml-1"><i class="fas fa-info"></i></a>

                                <a href='/sipesan/surat/penelitian/{{ $item->id_srtpenelitian }}/cetak'
                                    class="btn btn-sm btn-primary ml-1"><i class="fas fa-print"></i></a>
                        </td>
                    </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
</div>


@endsection

@push('script')
<script>
    $('.deleteSrtPenelitian').click(function () {
        var srtpenelitianId = $(this).attr('srtpenelitian-id');
        swal({
            title: "Hapus Data Surat Penelitian",
            text: "Apakah anda yakin ingin menghapus data surat penelitian ini ? ",
            icon: "warning",
            buttons: ["Jangan Hapus", "Hapus"],
            dangerMode: true,
            closeOnClickOutside: false,
        }).then((willDelete) => {
            if (willDelete) {
                window.location = "/sipesan/surat/penelitian/delete/" + srtpenelitianId + "";
            } else {
                swal(" Data surat penelitian tidak jadi dihapus.");
            }
        });
    });

</script>
@endpush
