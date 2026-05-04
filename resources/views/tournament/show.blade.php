@extends('layouts.admin')
@section('title','Visualizar Torneo')
@section('content')
<div class="card-body">

    <div class="form-group row">
        <label for="cedula" class="form-control-label col-sm-3 ">Nombre</label>
        <div class="col-sm-9">
            <input id="cedula" type="text" name="cedula" class="form-control" value="{{ $torneos->nombre }}" readonly>
        </div>
    </div>

    <div class="form-group row">
        <label for="cedula" class="form-control-label col-sm-3 ">Categoria</label>
        <div class="col-sm-9">
            <input id="cedula" type="text" name="cedula" class="form-control" value="{{ $torneos->categoria->descripcion }}" readonly>
        </div>
    </div>
    
    <div class="form-group row">
        <label for="cedula" class="form-control-label col-sm-3 ">Temporada</label>
        <div class="col-sm-9">
            <input id="cedula" type="text" name="cedula" class="form-control" value="{{ $torneos->temporada->descripcion }}" readonly>
        </div>
    </div>

</div>
@endsection
