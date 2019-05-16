@extends('layouts.admin')
@section('title','Visualizar Enfrentamiento')
@section('content')
<div class="card-body">

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
        <label for="nombre" class="form-control-label col-sm-3">Equipo Local</label>
        <div class="col-sm-4">
            <input id="equipo_local" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->inscripcion_equipo_local->equipo->nombre}} " readonly>
        </div>
        <div class="col-sm-1">
            @if($enfrentamiento->resultado) 
                <button type="button" class="btn btn-{{ $resultados->resultado_local>=$resultados->resultado_visitante ? 'success' : 'danger' }}" disabled>{{$resultados->resultado_local}}</button>
            @else
                <strong>Resultado No registrado </strong> 
            @endif
        </div>
        <div class="col-sm-12">
            <div class="text-center">
                <img src="{{asset($enfrentamiento->inscripcion_equipo_local->equipo->logo)}}" class="rounded-circle " width="80vh">
            </div>
        </div>
    </div>

    <div class="form-group row">
        <label for="nombre" class="form-control-label col-sm-3">Equipo Visitante</label>
        <div class="col-sm-4">
            <input id="equipo_local" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->inscripcion_equipo_visitante->equipo->nombre}} " readonly>
        </div>
        <div class="col-sm-1">
            @if($enfrentamiento->resultado) 
                <button type="button" class="btn btn-{{ $resultados->resultado_local<=$resultados->resultado_visitante ? 'success' : 'danger' }}" disabled>{{$resultados->resultado_visitante}}</button>
            @else
                <strong>Resultado No registrado </strong> 
            @endif
        </div>
        <div class="col-sm-12">
            <div class="text-center">
                <img src="{{asset($enfrentamiento->inscripcion_equipo_visitante->equipo->logo)}}" class="rounded-circle " width="80vh">
            </div>
        </div>
    </div>

    <div class="form-group row">
            <label for="nombre" class="form-control-label col-sm-3 ">Lugar</label>
            <div class="col-sm-4">
                <input id="lugar_direccion" type="text" name="Fecha" class="form-control" value="{{$enfrentamiento->lugar->nombre}}  Cll {{$enfrentamiento->lugar->direccion->calle}} Crr {{$enfrentamiento->lugar->direccion->carrera}} # {{$enfrentamiento->lugar->direccion->numero}}" readonly>
            </div>
    </div>

</div>
@endsection
