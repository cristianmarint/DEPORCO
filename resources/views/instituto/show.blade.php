@extends('layouts.admin')
@section('title','Ver Institucion')
@section('content')
    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Institucion</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/institutos')}}">Instituciones</a></li>
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
                        <input id="nombre" type="text" name="nit" class="form-control" value="{{$instituto->nombre}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nit" class="form-control-label col-sm-3 ">Nit</label>
                    <div class="col-sm-9">
                        <input id="nit" type="text" name="nit" class="form-control" value="{{$instituto->nit}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="codigo_dane" class="form-control-label col-sm-3">Codigo Dane</label>
                    <div class="col-sm-9">
                        <input id="codigo_dane" type="text" name="codigo_dane" class="form-control" value="{{$instituto->codigo_dane}}" readonly>
                    </div>
                </div>


                <div class="form-group row">
                    <label for="departamento" class="col-sm-3 form-control-label">Departamento</label>
                    <div class="col-sm-9">
                        <input id="departamento" type="text" name="departamento" class="form-control" value="{{$instituto->municipio->departamento->nombre}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="municipio" class="col-sm-3 form-control-label">Municipio / Ciudad</label>
                    <div class="col-sm-9">
                        <input id="municipio" type="text" name="municipio" class="form-control" value="{{$instituto->municipio->nombre}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="tipo_educacion" class="col-sm-3 form-control-label">Tipo de Educacion</label>
                    <div class="col-sm-9">
                        <input id="tipo_educacion" type="text" name="tipo_educacion" class="form-control" value="{{$instituto->tipo_educacion->tipo}}" readonly>
                    </div>
                </div>


                <div class="form-group row">
                    <label for="direccion" class="form-control-label col-sm-3">Direcci&oacute;n</label>
                    <div class="col-sm-9">
                        <input id="direccion" type="text" name="direccion" class="form-control" value="Calle {{$instituto->direccion->calle}}, Cra {{$instituto->direccion->carrera}}, #{{$instituto->direccion->numero}}" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="telefono" class="form-control-label col-sm-3">Telefono      </label>
                    <div class="col-sm-9">
                        <input id="telefono" type="text" name="telefono" class="form-control" value="{{$instituto->telefono->numero}}" readonly>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
