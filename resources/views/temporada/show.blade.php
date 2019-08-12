@extends('layouts.admin')
@section('title','Visualizar Temporada')
@section('content')
<div class="card-body">

    <div class="form-group row">
        <label for="descripcion" class="form-control-label col-sm-3 ">Descripcion</label>
        <div class="col-sm-9">
            <input id="descripcion" type="text" name="descripcion" class="form-control" value="{{ $temporadas->descripcion }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="fecha_inicio" class="form-control-label col-sm-3 ">fecha de inicio</label>
        <div class="col-sm-9">
            <input id="fecha_inicio" type="text" name="fecha_inicio" class="form-control" value="{{ $temporadas->fecha_inicio }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="fecha_fin" class="form-control-label col-sm-3 ">fecha de fin</label>
        <div class="col-sm-9">
            <input id="fecha_fin" type="text" name="fecha_fin" class="form-control" value="{{ $temporadas->fecha_fin }}" readonly>
        </div>
    </div>

</div>
@endsection
