@extends('layouts.admin')
@section('title','Ver Institucion')
@section('content')
    @if($instituto != null)
        <?php $bandera = 1; ?>
        <!-- Page Header-->
        <header class="page-header">
            <div class="container-fluid">
                <h2 class="no-margin-bottom">Institucion : {{$instituto->nombre_institucion}}</h2>
                <img src="{{asset($instituto->logo)}}"  class="img-fluid rounded-circle" width="60vh" style="margin-left: 50%; ">
            </div>
        </header>

        <!-- Breadcrumb-->
        <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
                <li class="breadcrumb-item active"><a href="{{url('/institutos')}}">Instituciones</a></li>
                <li class="breadcrumb-item">Ver</li>
            </ul>
        </div>

        <!-- Dashboard Counts Section-->
        <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
                    <div class="bg-white has-shadow">
                        <div class="form-group row">
                            <label for="nit" class="form-control-label col-sm-3 ">Nit</label>
                            <div class="col-sm-9">
                                <input id="nit" type="text" name="nit" class="form-control" value="{{$instituto->nit}}" readonly>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="codigo_dane" class="form-control-label col-sm-3">Codigo Dane      </label>
                            <div class="col-sm-9">
                                <input id="codigo_dane" type="text" name="codigo_dane" class="form-control" value="{{$instituto->codigo_dane}}" readonly>

                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="departamento" class="col-sm-3 form-control-label">Departamento</label>
                            <div class="col-sm-9">
                                <input id="departamento" type="text" name="departamento" class="form-control" value="{{$instituto->departamento}}" readonly>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="municipio" class="col-sm-3 form-control-label">Municipio / Ciudad</label>
                            <div class="col-sm-9">
                                <input id="municipio" type="text" name="municipio" class="form-control" value="{{$instituto->municipio}}" readonly>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="tipo_educacion" class="col-sm-3 form-control-label">Tipo de Educacion</label>
                            <div class="col-sm-9">
                               <input id="tipo_educacion" type="text" name="tipo_educacion" class="form-control" value="{{$instituto->tipo_educacion}}" readonly>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="direccion" class="form-control-label col-sm-3">Direcci&oacute;n      </label>
                            <div class="col-sm-9">
                                <input id="direccion" type="text" name="direccion" class="form-control" value="{{$instituto->direccion}}" readonly>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="telefono" class="form-control-label col-sm-3">Telefono      </label>
                            <div class="col-sm-9">
                                <input id="telefono" type="text" name="telefono" class="form-control" value="{{$instituto->telefono}}" readonly>
                            </div>
                        </div>
                    </div>
                @else
                    <!-- Page Header-->
                        <!-- Page Header-->
                        <header class="page-header">
                            <div class="container-fluid">
                                <h2 class="no-margin-bottom">Institucion</h2>
                            </div>
                        </header>

                        <!-- Breadcrumb-->
                        <div class="breadcrumb-holder container-fluid">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
                                <li class="breadcrumb-item active"><a href="{{url('/institutos')}}">Instituciones</a></li>
                                <li class="breadcrumb-item">Ver</li>
                            </ul>
                        </div>
                    <?php $bandera=0 ?>
                    <input type="hidden" value="<?php $bandera?>" id="bandera">
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
                        window.location = '{{route('institutos.index')}}';
                    });
            }
        })
    </script>
    @endsection
