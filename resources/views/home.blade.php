@extends('layouts.admin')
@section('title', 'Version Alpha 1.1')

@section('content')

    <div class="page-holder w-100 d-flex flex-wrap">
        <img src="{{url('/logo_deporco.svg')}}"  style="display: block;margin: auto;" width="40%" height="auto" alt="">
    </div>
@endsection

@section('bracket_futbol')


    <section class="py-5">
            <div class="card">
                <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Bracket De Futbol</h2>
                </div>
            <div class="card-body">
            <p class="mb-5 text-gray">Para el torneo { { Nombre del torno } }</p>          
            <div class="chart-holder mt-5 mb-5">
                <div class="" id="bracket_futbol_test"></div>
            </div>            
        </div>
        </div>
    </section>
@endsection

@section('scripts')
<script>
    var minimalData = {
        teams : [
            ["Team 1", "Team Z"],
            ["Team 3", "Team X"],
            ["Team 4", "Team C"],
            ["Team 5", "Team V"]
        ],
        results: [
            [
                [[1, 0], [2, 1], [3, 2], [4, 3]],
                [[1, 0], [2, 1]],
                [[2, 0], [0, 3]]
            ]
        ]
    }

    $(function() {
    $('#bracket_futbol_test').bracket({
        init: minimalData 
        })
    })
</script>    
@endsection

@section('cambios')
    {{--messages--}}
    <section class="py-5">
        <div class="row">
            <div class="col-lg-12"><a href="#" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                    <div class="row">
                        <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left"><strong class="h5 mb-0">DIA<sup class="smaller text-gray font-weight-normal">MES</sup></strong>
                                <img src="@if( isset(Auth::user()->datos_basicos->foto) ){{ Auth::user()->datos_basicos->foto }}@else @if ( Auth::user()->avatar) {{ Auth::user()->avatar}} @else {{ asset('/storage/storage/img/favicon/cotecnova.png') }} @endif @endif" alt="{{Auth::user()->datos_basicos->primer_nombre}}" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                            <h6 class="mb-0">{{Auth::user()->datos_basicos->primer_nombre}} {{Auth::user()->datos_basicos->primer_apellido}}</h6>
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
