@extends('layouts.admin')
@section('title','Visualizar Lugar')
@section('content')
<div class="card-body">

    <div class="form-group row">
        <label for="nombre" class="form-control-label col-sm-3 ">Nombre</label>
        <div class="col-sm-9">
            <input id="nombre" type="text" name="nit" class="form-control" value="{{$lugar->nombre}}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="departamento" class="col-sm-3 form-control-label">Departamento</label>
        <div class="col-sm-9">
            <input id="departamento" type="text" name="departamento" class="form-control" value="{{$lugar->municipio->departamento->nombre}}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="municipio" class="col-sm-3 form-control-label">Municipio / Ciudad</label>
        <div class="col-sm-9">
            <input id="municipio" type="text" name="municipio" class="form-control" value="{{$lugar->municipio->nombre}}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="direccion" class="form-control-label col-sm-3">Direcci&oacute;n</label>
        <div class="col-sm-9">
            <input id="direccion" type="text" name="direccion" class="form-control" value="Calle {{$lugar->direccion->calle}} Carrera {{$lugar->direccion->carrera}} # {{$lugar->direccion->numero}}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="telefono" class="form-control-label col-sm-3">Telefono      </label>
        <div class="col-sm-9">
            <input id="telefono" type="text" name="telefono" class="form-control" value="{{$lugar->telefono->tipo}} {{$lugar->telefono->numero}}" readonly>
        </div>
    </div>

</div>
@endsection
