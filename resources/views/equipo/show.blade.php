@extends('layouts.admin')
@section('title','Visualizar Equipo')
@section('content')
<div class="card-body">

        <div class="form-group row">
            <label for="nit" class="form-control-label col-sm-3 ">Logo</label>
            <div class="col-sm-9">
                <img src="{{asset($equipo->logo)}}"  class="mx-auto d-block rounded" width="150vh">
            </div>
        </div>
        
        <div class="form-group row">
            <label for="nombre" class="form-control-label col-sm-3 ">Nombre</label>
            <div class="col-sm-9">
                <input id="nombre" type="text" name="nombre" class="form-control" value="{{$equipo->nombre}}" readonly>
            </div>
        </div>
        
        <div class="form-group row">
            <label for="colores" class="col-sm-3 form-control-label">Colores</label>
            <div class="col-sm-9">
                <input id="colores" type="text" name="colores" class="form-control" value="{{$equipo->colores->color}}" readonly>
            </div>
        </div>

        <div class="form-group row">
            <label for="institucion" class="form-control-label col-sm-3">Institución</label>
            <div class="col-sm-9">
                <input id="institucion" type="text" name="institucion" class="form-control" value="{{$equipo->instituto->nombre}}" readonly>
            </div>
        </div> 

        
        <div class="form-group row">
            <label for="jugadores" class="form-control-label col-sm-3">Jugadores</label>
            <div class="col-sm-9">
                @foreach ($jugadores as $jugador)
                    <input type="text" name="jugador" class="form-control" value="C.C. {{$jugador->cedula}}  :  {{$jugador->primer_nombre}} {{$jugador->primer_apellido}}" readonly><br>
                @endforeach 
            </div>
        </div>

</div>
@endsection
