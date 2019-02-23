@extends('layouts.admin')
@section('title', 'Inicio')
@section('content')
    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="row bg-white has-shadow">
                <p>
                    {{ config('app.name') }} version. 0.2
                    <br>
                    versi&oacute;n de desarrollo
                </p>
            </div>
        </div>
    </section>
@endsection
