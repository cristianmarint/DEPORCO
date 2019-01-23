@extends('layouts.admin')
@section('title','- Crear Temporadas')
@section('content')

    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom"> Temporada</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/temporadas'}}">Temporadas</a></li>
            <li class="breadcrumb-item">Crear</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                <!-- Form Elements -->
                <div class="card">
                    <div class="card-header d-flex align-items-center">
                        <h3 class="h4">Crear Temporada</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{route('temporadas.store')}}" method="POST" class="form-horizontal">
                            @csrf

                            <div class="form-group row">
                                <label for="create_numero_temporada" class="form-control-label col-sm-3 ">Numero Temporada</label>
                                <div class="col-sm-9">
                                    <input id="create_numero_temporada" type="text" name="numero_temporada" class="form-control {{ $errors->has('numero_temporada') ? ' is-invalid' : '' }}" value="{{old('numero_temporada')}}">
                                    @if ($errors->has('numero_temporada'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('numero_temporada') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_descripcion_temporada" class="form-control-label col-sm-3 ">Descripcion Temporada</label>
                                <div class="col-sm-9">
                                    <input id="create_descripcion_temporada" type="text" name="descripcion_temporada" class="form-control {{ $errors->has('descripcion_temporada') ? ' is-invalid' : '' }}" value="{{old('descripcion_temporada')}}">
                                    @if ($errors->has('descripcion_temporada'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('descripcion_temporada') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_fecha_inicio" class="form-control-label col-sm-3 ">Fecha Inicio</label>
                                <div class="col-sm-9">
                                    <input id="create_fecha_inicio" type="date" name="fecha_inicio" class="form-control {{ $errors->has('fecha_inicio') ? ' is-invalid' : '' }}" value="{{old('fecha_inicio')}}">
                                    @if ($errors->has('fecha_inicio'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('fecha_inicio') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_fecha_fin" class="form-control-label col-sm-3 ">Fecha Fin</label>
                                <div class="col-sm-9">
                                    <input id="create_fecha_fin" type="date" name="fecha_fin" class="form-control {{ $errors->has('fecha_fin') ? ' is-invalid' : '' }}" value="{{old('fecha_fin')}}">
                                    @if ($errors->has('fecha_fin'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('fecha_fin') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-sm-12 offset-sm-5">
                                    <button type="button"  onclick="window.location='{{route('temporadas.index')}}'" class="btn btn-secondary">Cancel</button>
                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
