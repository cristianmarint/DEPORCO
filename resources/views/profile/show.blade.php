@extends('layouts.admin')
@section('title','Visualizar Datos Basicos')
@section('content')
<div class="card-body">
    
    <div class="form-group row">
            <label for="nit" class="form-control-label col-sm-3 ">Foto</label>
            <div class="col-sm-9">
                <img src="{{asset($datosbasicos->foto)}}"  class="mx-auto d-block rounded" width="150vh">
            </div>
    </div>

    <div class="form-group row">
        <label for="cedula" class="form-control-label col-sm-3 ">Cedula</label>
        <div class="col-sm-9">
            <input id="cedula" type="text" name="cedula" class="form-control" value="{{ $datosbasicos->cedula }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="nombre" class="form-control-label col-sm-3 ">Nombre completo</label>
        <div class="col-sm-9">
            <input id="nombre" type="text" name="nombre" class="form-control" value="{{ $datosbasicos->primer_nombre }} {{ $datosbasicos->segundo_nombre }} {{ $datosbasicos->primer_apellido }} {{ $datosbasicos->segundo_apellido }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="tiposangre" class="form-control-label col-sm-3 ">Tipo de sangre</label>
        <div class="col-sm-9">
            <input id="tiposangre" type="text" name="tiposangre" class="form-control" value="{{ $datosbasicos->tipo_sangre->tipo }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="genero" class="form-control-label col-sm-3 ">Genero</label>
        <div class="col-sm-9">
            <input id="genero" type="text" name="genero" class="form-control" value="{{ $datosbasicos->genero->genero }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="eps" class="form-control-label col-sm-3 ">Eps</label>
        <div class="col-sm-9">
            <input id="eps" type="text" name="eps" class="form-control" value="{{ $datosbasicos->eps->nombre }}  {{ $datosbasicos->eps->tipo }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="telefono" class="form-control-label col-sm-3">Telefono</label>
        <div class="col-sm-9">
            <input id="telefono" type="text" name="telefono" class="form-control" value="@isset($datos->telefono) {{ $datos->telefono->tipo}} {{ $datos->telefono->numero}} @endisset" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="email" class="form-control-label col-sm-3">Correo electronico      </label>
        <div class="col-sm-9">
            <input id="email" type="text" name="email" class="form-control" value="{{$datosbasicos->email}}" readonly>
        </div>
    </div>
    
    <div class="form-group row">
        <label for="departamento" class="col-sm-3 form-control-label">Departamento</label>
        <div class="col-sm-9">
            <input id="departamento" type="text" name="departamento" class="form-control" value="{{$datosbasicos->municipio->departamento->nombre}}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="municipio" class="col-sm-3 form-control-label">Municipio / Ciudad</label>
        <div class="col-sm-9">
            <input id="municipio" type="text" name="municipio" class="form-control" value="{{$datosbasicos->municipio->nombre}}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="direccion" class="form-control-label col-sm-3">Direcci&oacute;n</label>
        <div class="col-sm-9">
            <input id="direccion" type="text" name="direccion" class="form-control" value="Calle {{$datosbasicos->direccion->calle}} Carrera {{$datosbasicos->direccion->carrera}} # {{$datosbasicos->direccion->numero}}" readonly>
        </div>
    </div>


</div>
@endsection
