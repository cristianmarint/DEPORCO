@extends('layouts.admin')
@section('title','Categorias')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/categorias')}}">Categorias</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

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
        </div>
    </section>
@endsection
