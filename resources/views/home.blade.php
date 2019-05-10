@extends('layouts.admin')
@section('title', 'Version Alpha 1.1')

@section('content')

    <div class="page-holder w-100 d-flex flex-wrap">
        <img src="{{url('/logo_deporco.svg')}}"  style="display: block;margin: auto;" width="50%" height="auto" alt="">
    </div>



    {{--messages--}}
    <section class="py-5">
        <div class="row">
            <div class="col-lg-12"><a href="#" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                    <div class="row">
                        <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left"><strong class="h5 mb-0">DIA<sup class="smaller text-gray font-weight-normal">MES</sup></strong><img src="{{Auth::user()->datos_basicos->foto}}" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                            <h6 class="mb-0">Jason Maxwell</h6>
                        </div>
                        <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                            <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Cambios</div>
                            <p class="mb-0 mt-3 mt-lg-0"> Espacio para mensajes o notas importantes o de cambios para los administradores</p>
                        </div>
                    </div></a>
            </div>
        </div>
    </section>


@endsection
