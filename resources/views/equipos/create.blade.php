@extends('layouts.admin')
@section('title','- Crear Equipos')
@section('content')
    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Equipos</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/equipos'}}">Equipos</a></li>
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
                        <h3 class="h4">Crear Equipos</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{route('equipos.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                            @csrf

                            <div class="form-group row">
                                <label for="create_nombre_equipo" class="form-control-label col-sm-3 ">Nombre equipo</label>
                                <div class="col-sm-9">
                                    <input id="create_nombre_equipo" type="text" name="nombre_equipo" class="form-control {{ $errors->has('nombre_equipo') ? ' is-invalid' : '' }}" value="{{old('nombre_equipo')}}">
                                    @if ($errors->has('nombre_equipo'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('nombre_equipo') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_colores" class="form-control-label col-sm-3">Colores Uniforme   </label>
                                <div class="col-sm-9">
                                    <input id="create_colores" type="text" name="colores_equipo" class="form-control{{ $errors->has('colores_equipo') ? ' is-invalid' : '' }}" value="{{old('colores_equipo')}}">
                                    @if ($errors->has('colores_equipo'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('colores_equipo') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_logo" class="col-sm-3 form-control-label">Logo/escudo</label>
                                <div class="col-sm-9">
                                    <input id="create_logo" type="file" name="logo" class="form-control{{ $errors->has('logo') ? ' is-invalid' : '' }}" accept="image/*">
                                    @if ($errors->has('logo'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('logo') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="select_instituto" class="col-sm-3 form-control-label">Instituto</label>
                                <div class="col-sm-9">
                                    <select name="instituto" id="select_instituto" class="form-control{{ $errors->has('instituto') ? ' is-invalid' : '' }}">
                                        <option value="0" >Seleccione un instituto</option>
                                        @foreach($institutos as $instituto)
                                            <option value="{{$instituto->id_instituto}}">{{$instituto->nombre_institucion}} - {{$instituto->municipio}}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->has('instituto'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('instituto') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-sm-12 offset-sm-5">
                                    <button type="button"  onclick="window.location='{{route('equipos.index')}}'" class="btn btn-secondary">Cancel</button>
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
