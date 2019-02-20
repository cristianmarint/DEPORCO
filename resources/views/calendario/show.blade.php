@extends('layouts.admin')
@section('title','Calendarios')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/calendarios')}}">Calendarios</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

                <div class="form-group row">
                    <label for="jornada" class="form-control-label col-sm-3 ">Numero Jornada</label>
                    <div class="col-sm-9">
                        <input id="jornada" type="text" name="jornada" class="form-control" value="{{$calendario->jornada}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="fecha" class="form-control-label col-sm-3 ">Fecha</label>
                    <div class="col-sm-9">
                        <input id="fecha" type="date" name="fecha" class="form-control" value="{{$calendario->fecha}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="torneo" class="form-control-label col-sm-3 ">Torneo</label>
                    <div class="col-sm-9">
                        <input id="torneo" type="text" name="torneo" class="form-control" value="{{$calendario->torneo->nombre}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="fase" class="form-control-label col-sm-3 ">Torneo</label>
                    <div class="col-sm-9">
                        <input id="fase" type="text" name="fase" class="form-control" value="{{$calendario->fase->nombre}}" readonly>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
