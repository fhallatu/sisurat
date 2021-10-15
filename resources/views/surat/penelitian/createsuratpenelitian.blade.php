@extends('layouts.master')

@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1> Tambah Data Surat Penelitian </h1>
        </div>
        
        <livewire:suratpenelitian :penelitian="$penelitian">
</div>
@endsection