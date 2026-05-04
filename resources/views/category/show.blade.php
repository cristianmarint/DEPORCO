@extends('layouts.admin')
@section('title','Visualizar Categoria')
@section('content')
<div class="card-body">
    <div class="form-group row">
        <label for="nombre" class="form-control-label col-sm-3 ">Nombre</label>
        <div class="col-sm-9">
            <input id="nombre" type="text" name="nombre" class="form-control" value="{{ $categorias->nombre }}" readonly>
        </div>
    </div>
    <div class="form-group row">
        <label for="descripcion" class="form-control-label col-sm-3 ">Descripcion</label>
        <div class="col-sm-9">
            <input id="descripcion" type="text" name="descripcion" class="form-control" value="{{ $categorias->descripcion }}" readonly>
        </div>
    </div>
</div>
@endsection
