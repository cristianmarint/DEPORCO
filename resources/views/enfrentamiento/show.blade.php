@extends('layouts.admin')
@section('title','Enfrentamientos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/enfrentamientos')}}">Enfrentamientos</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

                <div class="form-group row">
                    <label for="nombre" class="form-control-label col-sm-3 ">Torneo</label>
                    <div class="col-sm-4">
                        <input id="nombre" type="text" name="Torneo" class="form-control" value="{{$enfrentamiento->calendario->torneo->nombre}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nombre" class="form-control-label col-sm-3 ">Fecha</label>
                    <div class="col-sm-4">
                        <input id="nombre" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->calendario->fecha}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nombre" class="form-control-label col-sm-3 ">Jornada</label>
                    <div class="col-sm-4">
                        <input id="nombre" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->calendario->jornada}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nombre" class="form-control-label col-sm-3 ">Fase</label>
                    <div class="col-sm-4">
                        <input id="nombre" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->calendario->fase->nombre}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nombre" class="form-control-label col-sm-3 ">Equipo local</label>
                    <div class="col-sm-4">
                        <input id="equipo_local" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->inscripcion_equipo_local->equipo->nombre}}" readonly>

                        <div class="text-center">
                                <img src="{{asset($enfrentamiento->inscripcion_equipo_local->equipo->logo)}}" class="rounded-circle " width="80vh">
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nombre" class="form-control-label col-sm-3 ">Equipo Visitante</label>
                    <div class="col-sm-4">
                        <input id="equipo_local" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->inscripcion_equipo_visitante->equipo->nombre}}" readonly>

                        <div class="text-center">
                                <img src="{{asset($enfrentamiento->inscripcion_equipo_visitante->equipo->logo)}}" class="rounded-circle " width="80vh">
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                        <label for="nombre" class="form-control-label col-sm-3 ">Lugar</label>
                        <div class="col-sm-2">
                            <input id="lugar_nombre" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->lugar->nombre}}" readonly>
                        </div>
                        <div class="col-sm-2">
                            <input id="lugar_direccion" type="text" name="Fecha" class="form-control" value="Cll {{$enfrentamiento->lugar->direccion->calle}} Crr {{$enfrentamiento->lugar->direccion->carrera}} # {{$enfrentamiento->lugar->direccion->numero}}" readonly>
                        </div>
                </div>

            </div>
        </div>
    </section>
@endsection
