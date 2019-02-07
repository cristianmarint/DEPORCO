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
                        <input id="descripcion" type="text" name="descripcion" class="form-control" value="{{ $categorias->descripcion }}" readonly>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
