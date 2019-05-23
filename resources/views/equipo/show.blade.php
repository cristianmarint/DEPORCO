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
</div>

@endsection
@section('additional_car', 'd-sm-block')
@section('additional_title', 'Listado de Jugadores')
@section('additional_content')
    <div class="card-body">

        <div class="card-body table-responsive">
            <table id="jugadores" class="table table-striped table-hover card-text" style="text-align: center;">
                <thead >
                <tr>
                    <th>Cedula</th>
                    <th>Nombre</th>
                    <th>Telefono</th>
                </tr>
                </thead>

                <tbody >

                @foreach($jugadores as $jugador)
                    <tr>
                        <td>{{$jugador->jugador->datos_basicos->cedula}}</td>
                        <td>{{$jugador->jugador->datos_basicos->primer_nombre}} {{$jugador->jugador->datos_basicos->primer_apellido}} </td>
                        <td>{{$jugador->jugador->datos_basicos->telefono->numero}}</td>
                    </tr>
                @endforeach

                </tbody>
            </table>
        </div>


    </div>
@endsection
