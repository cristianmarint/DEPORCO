@extends('layouts.admin')
@section('title','- Ver Equipos')
@section('content')
    @if($equipo != null)
        <?php $bandera = 1; ?>
        <!-- Page Header-->
        <header class="page-header">
            <div class="container-fluid">
                <h2 class="no-margin-bottom">Equipo : {{$equipo->nombre_equipo}}</h2>
                <img src="{{asset($equipo->logo)}}"  class="img-fluid rounded-circle" width="60vh" style="margin-left: 50%; ">
            </div>
        </header>

        <!-- Breadcrumb-->
        <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
                <li class="breadcrumb-item active"><a href="{{'/equipos'}}">Equipos</a></li>
                <li class="breadcrumb-item">Ver</li>
            </ul>
        </div>

        <!-- Dashboard Counts Section-->
        <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
                <div class="bg-white has-shadow">
                    {{--irst(['nombre_equipo', 'nombre_institucion', 'equipo.logo', 'colores_uniforme']);--}}
                    <div class="form-group row">
                        <label for="nombre_equipo" class="form-control-label col-sm-3 ">Nombre equipo</label>
                        <div class="col-sm-9">
                            <input id="nombre_equipo" type="text" name="nombre_equipo" class="form-control" value="{{$equipo->nombre_equipo}}" readonly>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colores_equipo" class="form-control-label col-sm-3">Colores Uniforme   </label>
                        <div class="col-sm-9">
                            <input id="colores_equipo" type="text" name="colores_equipo" class="form-control" value="{{$equipo->colores_uniforme}}" readonly>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="institucion" class="col-sm-3 form-control-label">Institucion</label>
                        <div class="col-sm-9">
                            <input id="institucion" type="text" name="institucion" class="form-control" value="{{$equipo->nombre_institucion}}" readonly>
                        </div>
                    </div>
                </div>
                @else
                    <?php $bandera =0 ?>
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
                        window.location = '{{route('equipos.index')}}';
                    });
            }
        })
    </script>
@endsection

