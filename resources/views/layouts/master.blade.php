<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>@yield('title') {{ config('app.name')}}</title>

    @include('layouts.style')

    <livewire:styles>
</head>

@stack('page-style')
@stack('style')

<body>

    <!-- Header -->

    @include('layouts.header')

    <!-- Sidebar -->

    @include('layouts.sidebar')

    <!-- Main -->

    <main>
        @yield('content')
    </main>

    <!-- Footer -->

    @include('layouts.footer')


    @stack('before-script')

    @include('layouts.script')

    @stack('page-script')
    @stack('script')

    <livewire:scripts>
    @include('sweetalert::alert')
</body>

</html>
