@extends('layouts.admin')
@section('title','Visualizar Calendario')
@section('content')
<div class="card-body">

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
        <label for="fase" class="form-control-label col-sm-3 ">Fase</label>
        <div class="col-sm-9">
            <input id="fase" type="text" name="fase" class="form-control" value="{{$calendario->fase->nombre}}" readonly>
        </div>
    </div>

</div>
@endsection
