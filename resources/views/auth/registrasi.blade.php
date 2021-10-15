<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Registrasi</title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="../node_modules/selectric/public/selectric.css">
    <link href="{{ asset('assets/select/css/bootstrap-select.min.css') }}" rel="stylesheet">

    <!-- Template CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/components.css">
</head>

<body>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <div id="app">
        <section class="section">
            <div class="container mt-5">
                <div class="row">
                    <div
                        class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
                        <div class="login-brand">
                            <img src="../assets/img/unib_background.png" alt="logo" width="100"
                                class="shadow-light rounded-circle">
                        </div>

                        <div class="card card-primary">
                            <div class="card-header">
                                <h4>Register</h4>
                            </div>

                            <div class="card-body">
                                <form action="/sipesan/register/update" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="card-body">
                                        <div class="form-group mb-auto">
                                            <label>NIP User</label>
                                            <select class="selectpicker form-control" name="id_user" id="id_user"
                                                data-live-search="true">
                                                @foreach ($user as $user)
                                                <option value="{{ $user->id_user }}">{{ $user->nip_user }} ~ (
                                                    {{ $user->nama_user }} )
                                                </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <x-input field="nidn_user" setting="form-control" label="NIDN" type="text"
                                        ph="Tuliskan NIDN Anda..." isi="" />

                                    <x-input_group field="tgl_lahir_user" setting="form-control" label="Tanggal Lahir"
                                        type="date" ph="Masukkan Email Anda..." isi="" icon="fas fa-calendar" />
                                    <x-input_group field="email_user" setting="form-control" label="Email" type="email"
                                        ph="Masukkan Email Anda..." isi="" icon="fas fa-envelope" />
                                    <x-input_group field="no_hp_user" setting="form-control" label="Nomor Handphone"
                                        type="text" ph="Masukkan Nomor Anda..." isi="" icon="fas fa-mobile-alt" />
                                    <x-input_group field="alamat_user" setting="form-control" label="Alamat" type="text"
                                        ph="Masukkan Alamat Anda..." isi="" icon="fas fa-map-marked-alt" />

                                    <div class="row">
                                        <x-input field="prodi_user" setting="form-control" label="Program Studi"
                                            type="text" ph="Tuliskan Prodi Anda..." isi="" />
                                        <x-input field="fakultas_user" setting="form-control" label="Fakultas"
                                            type="text" ph="Tuliskan Fakultas Anda..." isi="" />
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block">
                                            Register
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="simple-footer">
                            Copyright &copy; Stisla 2018
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- General JS Scripts -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="../assets/js/stisla.js"></script>

    <!-- JS Libraies -->
    <script src="../node_modules/jquery-pwstrength/jquery.pwstrength.min.js"></script>
    <script src="../node_modules/selectric/public/jquery.selectric.min.js"></script>

    <!-- Template JS File -->
    <script src="../assets/js/scripts.js"></script>
    <script src="../assets/js/custom.js"></script>

    <!-- Page Specific JS File -->
    <script src="../assets/js/page/auth-register.js"></script>
    <script type="text/javascript" src="{{ asset('assets/select/js/bootstrap-select.min.js') }}"></script>
    <script src="{{ asset('https://unpkg.com/sweetalert/dist/sweetalert.min.js')}}"></script>
    <script src="{{ asset('//cdn.jsdelivr.net/npm/sweetalert2@11')}}"></script>
    <script src="{{ asset('https://unpkg.com/sweetalert/dist/sweetalert.min.js')}}"></script>

</body>

</html>
