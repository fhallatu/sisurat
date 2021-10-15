<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <img src="{{ asset('../assets/img/unib_background.png')}}" alt="logo" width="50" class="shadow-light rounded-circle"><br>
            <a href="">SIPESAN</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <img src="{{ asset('../assets/img/unib_background.png')}}" alt="logo" width="45" class="shadow-light rounded-circle"><br>
        </div>
        <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li class="nav-item dropdown">
                <a href="/sipesan/dashboard" class="nav-link "><i
                        class="fas fa-fire"></i><span>Dashboard</span></a>
            </li>
            <li class="menu-header">Menu Utama</li>
            @if(auth()->user()->hak_akses == 'admin')
            <li class="nav-item dropdown">
                <a href="/sipesan/user" class="nav-link"><i class="fas fa-user"></i></i> <span>Manajemen User</span></a>
            </li>
            @endif
            @if((auth()->user()->hak_akses == 'admin') || (auth()->user()->hak_akses == 'staff'))
            <li class="nav-item dropdown">
                <a href="/sipesan/penelitian" class="nav-link "><i class="fas fa-file-contract"></i> <span>Manajemen
                        Penelitian</span></a>
            </li>
            <li class="nav-item dropdown">
                <a href="/sipesan/pengabdian" class="nav-link "><i class="fas fa-file-archive"></i> <span>Manajemen
                        Pengabdian</span></a>
            </li>
            @endif
            <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-th"></i> <span>Manajemen Surat</span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="/sipesan/surat/penelitian">Surat Penelitian</a></li>
                    <li><a class="nav-link" href="/sipesan/surat/pengabdian">Surat Pengabdian</a></li>
                </ul>
            </li>
    </aside>
</div>
