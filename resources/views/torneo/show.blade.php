@extends('layouts.admin')
@section('title','Torneos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/torneos')}}">Torneos</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

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
        </div>
    </section>
@endsection
