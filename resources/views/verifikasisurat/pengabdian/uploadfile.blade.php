@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Data Surat Pengabdian Upload File </h1>
        </div>
    </section>
    <div class="card">
        <div class="card-body">
            <table class="table table-hover table-responsive">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Upload File</th>
                        <th scope="col">Skema</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Jenis Surat</th>
                        <th scope="col">Jenis Surat Tugas</th>
                        <th scope="col">Nama Ketua</th>
                        <th scope="col">Status</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        @foreach ($suratpengabdian as $item)
                        <td>{{$loop->iteration}}</td>
                        @if($item->status=="upload file")
                        <td class="text-center">
                            <a href="/sipesan/surat/pengabdian/uploadfile/{{$item->id_srtpengabdian}}/upload"
                                class="bs-tooltip" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="Upload File">
                                <svg id="Layer_1" enable-background="new 0 0 512 512" height="25" viewBox="0 0 512 512"
                                    width="25" xmlns="http://www.w3.org/2000/svg">
                                    <g>
                                        <path
                                            d="m392.836 0h-314.454c-11.013 0-19.974 8.96-19.974 19.974v379.531c0 11.014 8.96 19.974 19.974 19.974h20.212c1.386 0 2.709-.575 3.655-1.588l309.5-331.482c.864-.926 1.345-2.146 1.345-3.412v-62.739c.001-11.17-9.087-20.258-20.258-20.258z"
                                            fill="#ff6986" />
                                        <path
                                            d="m453.592 123.49v311.01c0 11.02-8.96 19.98-19.97 19.98h-320.05c-11.02 0-19.98-8.96-19.98-19.98v-377.03c0-11.01 8.96-19.97 19.98-19.97h254.02l9.24 9.24z"
                                            fill="#d9f9f8" />
                                        <path
                                            d="m453.592 123.49v311.01c0 11.02-8.96 19.98-19.97 19.98h-320.05c-11.02 0-19.98-8.96-19.98-19.98v-5.02h319.3c11.15 0 20.19-9.04 20.19-20.2v-285.79l-56.25-76.75z"
                                            fill="#c1eaf4" />
                                        <path
                                            d="m453.592 123.49h-20.51l-58.91-.01c-3.63 0-6.58-2.94-6.58-6.58v-79.4c1.33 0 2.6.52 3.54 1.46l81 81c.94.94 1.46 2.21 1.46 3.53z"
                                            fill="#aec9d6" />
                                        <path d="m453.592 123.49h-20.51l-61.95-84.53 81 81c.94.94 1.46 2.21 1.46 3.53z"
                                            fill="#8fb2bc" />
                                        <g fill="#aec9d6">
                                            <path
                                                d="m184.069 190.456h179.422c4.142 0 7.5-3.357 7.5-7.5s-3.358-7.5-7.5-7.5h-179.422c-4.142 0-7.5 3.357-7.5 7.5s3.358 7.5 7.5 7.5z" />
                                            <path
                                                d="m363.491 219.688h-179.422c-4.142 0-7.5 3.357-7.5 7.5s3.358 7.5 7.5 7.5h179.422c4.142 0 7.5-3.357 7.5-7.5s-3.358-7.5-7.5-7.5z" />
                                            <path
                                                d="m363.491 264.802h-35.447c-4.142 0-7.5 3.357-7.5 7.5s3.358 7.5 7.5 7.5h35.447c4.142 0 7.5-3.357 7.5-7.5s-3.358-7.5-7.5-7.5z" />
                                            <path
                                                d="m292.747 264.802h-108.678c-4.142 0-7.5 3.357-7.5 7.5s3.358 7.5 7.5 7.5h108.678c4.142 0 7.5-3.357 7.5-7.5s-3.358-7.5-7.5-7.5z" />
                                        </g>
                                        <path
                                            d="m367.982 417.81c0 51.93-42.26 94.19-94.2 94.19-4.06 0-8.06-.26-11.98-.76h-.04c-46.29-5.93-82.18-45.57-82.18-93.43 0-47.87 35.89-87.51 82.18-93.44h.04c3.92-.5 7.92-.76 11.98-.76 51.94 0 94.2 42.26 94.2 94.2z"
                                            fill="#ff6986" />
                                        <path
                                            d="m367.982 417.81c0 51.93-42.26 94.19-94.2 94.19-4.06 0-8.06-.26-11.98-.76 46.29-5.93 82.18-45.57 82.18-93.43 0-47.87-35.89-87.51-82.18-93.44 3.92-.5 7.92-.76 11.98-.76 51.94 0 94.2 42.26 94.2 94.2z"
                                            fill="#ea3487" />
                                        <path
                                            d="m311.881 410.598c-2.929 2.93-7.678 2.929-10.606.001l-19.994-19.993v72.506c0 4.143-3.358 7.5-7.5 7.5s-7.5-3.357-7.5-7.5v-72.506l-19.994 19.993c-2.929 2.928-7.678 2.929-10.606-.001-2.929-2.929-2.929-7.678 0-10.606l32.797-32.796c1.464-1.464 3.384-2.196 5.303-2.196s3.839.732 5.303 2.196l32.797 32.796c2.929 2.928 2.929 7.677 0 10.606z"
                                            fill="#fff" />
                                    </g>
                                </svg>
                        </td>
                        @else
                        <td class="text-center">
                            <svg id="Capa_1" enable-background="new 0 0 512 512" height="25" viewBox="0 0 512 512"
                                width="25" xmlns="http://www.w3.org/2000/svg">
                                <g>
                                    <g>
                                        <g>
                                            <path
                                                d="m162.451 103.081v-50.548h119.562c6.076 0 11.537 3.709 13.776 9.358l16.327 41.191h-149.665z"
                                                fill="#8ac9fe" />
                                        </g>
                                        <g>
                                            <path
                                                d="m312.118 103.086h-22.136l-16.327-41.198c-2.236-5.649-7.695-9.351-13.772-9.351h22.126c6.078 0 11.537 3.703 13.782 9.351z"
                                                fill="#60b7ff" />
                                        </g>
                                        <g>
                                            <path
                                                d="m419.342 103.081h-216.156c-6.076 0-11.537-3.709-13.776-9.358l-12.618-31.833c-2.239-5.649-7.699-9.358-13.776-9.358h-104.743c-8.184 0-14.818 6.634-14.818 14.818v20.912c0 8.184-6.634 14.818-14.818 14.818h-1.367c-10.926 0-19.784 8.858-19.784 19.784v303.471c0 18.298 14.833 33.131 33.131 33.131h398.51v-336.601c-.001-10.926-8.859-19.784-19.785-19.784z"
                                                fill="#fef0ae" />
                                        </g>
                                        <g>
                                            <path
                                                d="m439.124 148.515v310.948h-398.503c-3.613 0-7.096-.579-10.349-1.647 13.234-4.341 22.794-16.796 22.794-31.487v-258.033c0-10.928 8.852-19.78 19.78-19.78h366.278z"
                                                fill="#fee97d" />
                                        </g>
                                        <g>
                                            <path
                                                d="m203.186 103.086h-19.96c-6.078 0-11.537-3.713-13.772-9.361l-12.625-31.836c-2.236-5.649-7.695-9.351-13.772-9.351h19.96c6.078 0 11.537 3.703 13.772 9.351l12.625 31.836c2.235 5.648 7.694 9.361 13.772 9.361z"
                                                fill="#fee97d" />
                                        </g>
                                        <g>
                                            <path
                                                d="m93.537 148.512h368.629c10.926 0 19.784 8.858 19.784 19.784v271.388c0 10.926-8.858 19.784-19.784 19.784h-388.413-33.134c18.299 0 33.134-14.835 33.134-33.134v-258.038c0-10.927 8.858-19.784 19.784-19.784z"
                                                fill="#fee45a" />
                                        </g>
                                        <g>
                                            <path
                                                d="m481.948 168.296v271.387c0 10.928-8.852 19.78-19.78 19.78h-19.301c10.928 0 19.79-8.852 19.79-19.78v-271.387c0-10.928-8.862-19.78-19.79-19.78h19.301c10.928-.001 19.78 8.851 19.78 19.78z"
                                                fill="#fed402" />
                                        </g>
                                    </g>
                                    <g>
                                        <circle cx="412.041" cy="148.512" fill="#97da7b" r="92.474" />
                                    </g>
                                    <g>
                                        <path
                                            d="m504.513 148.515c0 51.068-41.397 92.475-92.475 92.475-20.25 0-38.982-6.507-54.212-17.555 11.168 4.79 23.483 7.445 36.407 7.445 51.078 0 92.475-41.407 92.475-92.475 0-30.818-15.08-58.114-38.263-74.92 32.974 14.132 56.068 46.876 56.068 85.03z"
                                            fill="#80d261" />
                                    </g>
                                    <g>
                                        <g>
                                            <path
                                                d="m398.452 190.76c-.086 0-.172-.001-.257-.002-4.296-.074-8.352-1.99-11.139-5.26l-22.635-26.571c-5.361-6.294-4.605-15.742 1.688-21.103 6.292-5.361 15.74-4.607 21.104 1.688l11.628 13.651 38.37-42.023c5.575-6.106 15.044-6.535 21.149-.961 6.105 5.575 6.536 15.043.961 21.149l-49.813 54.557c-2.839 3.108-6.853 4.875-11.056 4.875z"
                                                fill="#eaf6ff" />
                                        </g>
                                    </g>
                                    <g>
                                        <g>
                                            <path
                                                d="m459.323 131.33-49.82 54.551c-2.834 3.114-6.846 4.88-11.048 4.88h-.259c-4.301-.08-8.353-1.996-11.138-5.26l-1.677-1.966c4.172-.02 8.154-1.786 10.978-4.88l49.81-54.561c4.581-5.01 5.11-12.295 1.766-17.824 3.713-.08 7.465 1.208 10.419 3.912 6.109 5.569 6.538 15.04.969 21.148z"
                                                fill="#d8ecfe" />
                                        </g>
                                    </g>
                                    <g>
                                        <path
                                            d="m120.34 374.769h64.725c4.134 0 7.485-3.351 7.485-7.485s-3.351-7.485-7.485-7.485h-64.725c-4.134 0-7.485 3.351-7.485 7.485s3.351 7.485 7.485 7.485z" />
                                        <path
                                            d="m120.34 405.887h102.965c4.134 0 7.485-3.351 7.485-7.485s-3.351-7.485-7.485-7.485h-102.965c-4.134 0-7.485 3.351-7.485 7.485s3.351 7.485 7.485 7.485z" />
                                        <path
                                            d="m412.041 48.553c-35.698 0-67.079 18.814-84.764 47.044h-10.077l-14.454-36.465c-3.392-8.556-11.53-14.084-20.734-14.084h-223.739c-12.298 0-22.304 10.005-22.304 22.303v20.912c0 4.044-3.29 7.333-7.333 7.333h-1.367c-15.036 0-27.269 12.233-27.269 27.269v303.471c0 10.462 4.064 20.502 11.665 27.743 3.938 3.752 8.637 6.648 13.661 8.706 7.098 2.908 14.862 4.166 22.528 4.166h117.638c4.134 0 7.485-3.351 7.485-7.485s-3.351-7.485-7.485-7.485h-93.404c5.715-6.999 9.151-15.929 9.151-25.649v-258.036c0-6.782 5.517-12.299 12.299-12.299h218.825c3.841 51.635 47.08 92.474 99.679 92.474 23.597 0 45.307-8.224 62.424-21.95v213.164c0 6.781-5.517 12.299-12.299 12.299h-261.699c-4.134 0-7.485 3.351-7.485 7.485s3.351 7.485 7.485 7.485h261.699c15.036 0 27.269-12.233 27.269-27.269v-227.987c14.095-17.233 22.564-39.239 22.564-63.187 0-55.117-44.841-99.958-99.959-99.958zm-130.028 11.465c3.026 0 5.702 1.818 6.817 4.631l12.267 30.948h-97.911c-3.026 0-5.702-1.818-6.817-4.631l-12.267-30.947h97.911zm30.349 81.008h-218.825c-15.036 0-27.269 12.233-27.269 27.269v258.038c0 13.142-9.937 24.001-22.691 25.473-17.281-1.393-28.607-11.272-28.607-25.47v-303.471c0-6.782 5.517-12.299 12.299-12.299h1.367c12.298 0 22.303-10.005 22.303-22.303v-20.912c0-4.044 3.29-7.333 7.333-7.333h104.744c3.026 0 5.702 1.818 6.817 4.631l12.618 31.832c3.392 8.557 11.53 14.085 20.734 14.085h116.386c-3.917 9.512-6.412 19.753-7.209 30.46zm99.679 92.474c-46.863 0-84.989-38.126-84.989-84.989s38.126-84.989 84.989-84.989 84.989 38.126 84.989 84.989-38.126 84.989-84.989 84.989z" />
                                        <path
                                            d="m447.247 98.801c-5.992.272-11.519 2.862-15.564 7.291l-32.647 35.756-6.126-7.192c-8.032-9.425-22.234-10.559-31.655-2.531-9.425 8.029-10.561 22.23-2.532 31.655l22.636 26.572c4.178 4.903 10.268 7.779 16.709 7.889l.385.003c6.295 0 12.339-2.666 16.583-7.314l18.151-19.88c2.787-3.053 2.572-7.787-.48-10.574s-7.787-2.572-10.575.48l-18.151 19.88c-1.415 1.549-3.429 2.438-5.528 2.438l-.129-.001c-2.147-.037-4.177-.996-5.569-2.63l-22.635-26.571c-2.676-3.142-2.298-7.875.845-10.552 3.141-2.676 7.874-2.297 10.552.844l11.628 13.651c1.393 1.635 3.421 2.594 5.569 2.63 2.139.014 4.208-.851 5.656-2.437l38.37-42.023c1.348-1.477 3.19-2.34 5.188-2.43 1.996-.097 3.91.602 5.387 1.949 3.048 2.783 3.263 7.527.48 10.575l-7.963 8.721c-2.787 3.053-2.572 7.787.481 10.574s7.787 2.572 10.575-.48l7.963-8.721c8.348-9.144 7.701-23.375-1.441-31.724-4.433-4.043-10.179-6.116-16.163-5.848z" />
                                    </g>
                                </g>
                            </svg>
                        </td>
                        @endif
                        <td>{{$item->pengabdian['skema_pengabdian']}}</td>
                        <td>{{$item->pengabdian['judul_pengabdian']}}</td>
                        <td>{{$item->jenis_suratpengabdian}}</td>
                        <td>{{$item->jenis_surattugas}}</td>
                        <td>{{$item->pengabdian->user['nama_user']}}</td>
                        <td>
                            @if($item->status=="upload file")
                            <span class="badge badge-info">{{$item->status}}</span>
                            @elseif($item->status=="dalam antrean")
                            <span class="badge badge-danger">{{$item->status}}</span>
                            @elseif($item->status=="sedang diproses")
                            <span class="badge badge-warning">{{$item->status}}</span>
                            @elseif($item->status=="selesai")
                            <span class="badge badge-success">{{$item->status}}</span>
                            @endif
                        </td>
                        <td>
                            <div class='d-flex flex-row bd-highlight'>
                                <a href="#" srtpengabdian-id="{{ $item->id_srtpengabdian }}"
                                    srtpengabdian-jenis="{{ $item->jenis_suratpengabdian }}"
                                    class="deleteSrtPengabdian btn btn-sm btn-danger ml-1"><i
                                        class="far fa-trash-alt"></i></a>

                                <a href='/sipesan/surat/pengabdiann/{{$item->id_srtpengabdian}}/detail' class="btn btn-sm btn-info ml-1"><i
                                        class="fas fa-info"></i></a>
                            </div>
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
    $('.deleteSrtPengabdian').click(function () {
        var srtpengabdianId = $(this).attr('srtpengabdian-id');
        swal({
            title: "Hapus Data Surat Pengabdian",
            text: "Apakah anda yakin ingin menghapus data surat pengabdian ini ? ",
            icon: "warning",
            buttons: ["Jangan Hapus", "Hapus"],
            dangerMode: true,
            closeOnClickOutside: false,
        }).then((willDelete) => {
            if (willDelete) {
                window.location = "/sipesan/surat/pengabdian/delete/" + srtpengabdianId + "";
            } else {
                swal(" Data surat pengabdian tidak jadi dihapus.");
            }
        });
    });

</script>
@endpush
