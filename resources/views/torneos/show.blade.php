@extends('layouts.admin')
@section('title','- Ver Torneos')
@section('content')


    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Temporada</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/torneos'}}">Torneos</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                @if($torneo != null)
                    <?php $bandera = 1; ?>
                        <div class="form-group row">
                            <label for="torneo" class="form-control-label col-sm-3 ">Nombre Torneo</label>
                            <div class="col-sm-9">
                                <input id="torneo" type="text" name="torneo" class="form-control" value="{{$torneo->nombre_torneo}}" readonly>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="categoria" class="form-control-label col-sm-3 ">Categoria</label>
                            <div class="col-sm-9">
                                <input id="categoria" type="text" name="categoria" class="form-control" value="{{$torneo->categoria}}"readonly>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="temporada" class="form-control-label col-sm-3 ">Temporada</label>
                            <div class="col-sm-9">
                                <input id="temporada" type="text" name="temporada" class="form-control" value="{{$torneo->numero_temporada}}"readonly>
                            </div>
                        </div>


                    </div>
                @else
                    <?php $bandera =0;?>
                    <input type="hidden" value="<?php $bandera ?>" id="bandera">

                @endif
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        $(document).ready(function () {
            var bandera = $('#bandera').val();
            if(bandera == 0){
                swal({
                        title: "......",
                        text: "No se encontraron resultados para la busqueda",
                        type: "error",
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Regresar!",
                        closeOnConfirm: false },
                    function(){
                        window.location = '{{route('torneos.index')}}';
                    });
            }
        })
    </script>
@endsection


