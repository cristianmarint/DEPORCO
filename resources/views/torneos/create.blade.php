@extends('layouts.admin')
@section('title','- Crear Torneo')
@section('content')

    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom"> Torneos</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/torneos'}}">Torneos</a></li>
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
                        <h3 class="h4">Crear Torneos</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{route('torneos.store')}}" method="POST" class="form-horizontal">
                            @csrf

                            <div class="form-group row">
                                <label for="create_nombre_torneo" class="form-control-label col-sm-3 ">Nombre Torneo</label>
                                <div class="col-sm-9">
                                    <input id="create_nombre_torneo" type="text" name="nombre_torneo" class="form-control {{ $errors->has('nombre_torneo') ? ' is-invalid' : '' }}" value="{{old('nombre_torneo')}}">
                                    @if ($errors->has('nombre_torneo'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('nombre_torneo') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="select_categoria" class="col-sm-3 form-control-label">Categoria</label>
                                <div class="col-sm-9">
                                    <select name="categoria" id="select_categoria" class="form-control{{ $errors->has('categoria') ? ' is-invalid' : '' }}">
                                        <option value="0" >Seleccione una categoria</option>
                                            @foreach($categorias as $categoria)
                                                <option value="{{$categoria->id_categoria}}">{{$categoria->categoria}}</option>
                                            @endforeach
                                    </select>
                                    @if ($errors->has('categoria'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('categoria') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="select_temporada" class="col-sm-3 form-control-label">Temporada</label>
                                <div class="col-sm-9">
                                    <select name="temporada" id="select_temporada" class="form-control{{ $errors->has('temporada') ? ' is-invalid' : '' }}">
                                        <option value="0" >Seleccione una categoria</option>
                                            @foreach($temporadas as $temporada)
                                                <option value="{{$temporada->id_temporada}}">{{$temporada->numero_temporada}}</option>
                                            @endforeach
                                    </select>
                                    @if ($errors->has('temporada'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('temporada') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>



                            <div class="form-group row">
                                <div class="col-sm-12 offset-sm-5">
                                    <button type="button"  onclick="window.location='{{route('torneos.index')}}'" class="btn btn-secondary">Cancel</button>
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
