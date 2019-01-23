@extends('layouts.admin')
@section('title','- Ver Temporadas')
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
            <li class="breadcrumb-item active"><a href="{{'/temporadas'}}">Temporadas</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                @if($temporadas != null)
                    <?php $bandera = 1; ?>
                    <div class="form-group row">
                        <label for="numero_temporada" class="form-control-label col-sm-3 ">Numero Temporada</label>
                        <div class="col-sm-9">
                            <input id="numero_temporada" type="text" name="numero_temporada" class="form-control" value="{{$temporadas->numero_temporada}}" readonly>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="escripcion_temporada" class="form-control-label col-sm-3 ">Descripcion Temporada</label>
                        <div class="col-sm-9">
                            <input id="escripcion_temporada" type="text" name="descripcion_temporada" class="form-control" value="{{$temporadas->descripcion}}"readonly>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fecha_inicio" class="form-control-label col-sm-3 ">Fecha Inicio</label>
                        <div class="col-sm-9">
                            <input id="fecha_inicio" type="date" name="fecha_inicio" class="form-control" value="{{$temporadas->fecha_inicio}}"readonly>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fecha_fin" class="form-control-label col-sm-3 ">Fecha Fin</label>
                        <div class="col-sm-9">
                            <input id="fecha_fin" type="date" name="fecha_fin" class="form-control" value="{{$temporadas->fecha_fin}}"readonly>
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
                        window.location = '{{route('temporadas.index')}}';
                    });
            }
        })
    </script>
@endsection


