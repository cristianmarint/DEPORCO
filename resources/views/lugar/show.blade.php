@extends('layouts.admin')
@section('title','Lugares')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/lugares')}}">Lugares</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

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
        </div>
    </section>
@endsection
