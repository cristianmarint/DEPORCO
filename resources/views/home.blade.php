@extends('layouts.admin')
@section('title', 'Inicio')
@section('content')
    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="row bg-white has-shadow">
                <div class="col-md-12 text-center align-center mx-auto">
                    <p class="text-center align-center mx-auto"><strong style="color:#F7554D;">Versión Alpha 1.1 </strong></p>
                </div>
                <div class="col-md-12 mx-auto">
                    <img src="{{url('/logo_deporco.svg')}}"  style="display: block;margin: auto;" width="50%" height="auto" alt="">
                </div>
            </div>
        </div>
    </section>
@endsection
