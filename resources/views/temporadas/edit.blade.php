@extends('layouts.admin')
@section('title','- Editar Temporadas')
@section('content')

    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom"> Temporada </h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/temporadas'}}">Temporadas</a></li>
            <li class="breadcrumb-item">Editar</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
            @if($temporada != null)
                <?php $bandera = 1; ?>
                {{--edit--}}

                <!-- Form Elements -->
                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h3 class="h4">Editar Temporada</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{route('temporadas.update', $temporada->id_temporada)}}" method="POST" class="form-horizontal">
                                {{ method_field('PUT') }}
                                @csrf

                                <div class="form-group row">
                                    <label for="edit_numero_temporada" class="form-control-label col-sm-3 ">Numero Temporada</label>
                                    <div class="col-sm-9">
                                        <input id="edit_numero_temporada" type="text" name="numero_temporada" class="form-control {{ $errors->has('numero_temporada') ? ' is-invalid' : '' }}" value="{{$temporada->numero_temporada}}">
                                        @if ($errors->has('numero_temporada'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('numero_temporada') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="edit_descripcion_temporada" class="form-control-label col-sm-3 ">Descripcion Temporada</label>
                                    <div class="col-sm-9">
                                        <input id="edit_descripcion_temporada" type="text" name="descripcion_temporada" class="form-control {{ $errors->has('descripcion_temporada') ? ' is-invalid' : '' }}" value="{{$temporada->descripcion}}">
                                        @if ($errors->has('descripcion_temporada'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('descripcion_temporada') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="edit_fecha_inicio" class="form-control-label col-sm-3 ">Fecha Inicio</label>
                                    <div class="col-sm-9">
                                        <input id="edit_fecha_inicio" type="date" name="fecha_inicio" class="form-control {{ $errors->has('fecha_inicio') ? ' is-invalid' : '' }}" value="{{$temporada->fecha_inicio}}">
                                        @if ($errors->has('fecha_inicio'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('fecha_inicio') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="edit_fecha_fin" class="form-control-label col-sm-3 ">Fecha Fin</label>
                                    <div class="col-sm-9">
                                        <input id="edit_fecha_fin" type="date" name="fecha_fin" class="form-control {{ $errors->has('fecha_fin') ? ' is-invalid' : '' }}" value="{{$temporada->fecha_fin}}">
                                        @if ($errors->has('fecha_fin'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('fecha_fin') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <div class="col-sm-12 offset-sm-5">
                                        <button type="button"  onclick="window.location='{{route('temporadas.index')}}'" class="btn btn-secondary">Cancelar</button>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>

                {{--fin edit--}}
                @else
                    <?php $bandera =0;?>
                    <input type="hidden" value="<?php $bandera ?>" id="bandera">

                @endif
            </div>
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
