@extends('layouts.admin')
@section('title','- Crear Categorias')
@section('content')

    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom"> Categorias </h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/categorias'}}">Categorias</a></li>
            <li class="breadcrumb-item">Crear</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                <!-- Form Elements -->
                <div class="card">
                    <div class="card-header d-flex align-items-center">
                        <h3 class="h4">Crear Categoria</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{route('categorias.store')}}" method="POST" class="form-horizontal">
                            @csrf

                            <div class="form-group row">
                                <label for="create_categoria" class="form-control-label col-sm-3 ">Categoria</label>
                                <div class="col-sm-9">
                                    <input id="create_categoria" type="text" name="categoria" class="form-control {{ $errors->has('categoria') ? ' is-invalid' : '' }}" value="{{old('categoria')}}">
                                    @if ($errors->has('categoria'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('categoria') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_descripcion" class="form-control-label col-sm-3 ">Descripcion</label>
                                <div class="col-sm-9">
                                    <input id="create_descripcion" type="text" name="descripcion" class="form-control {{ $errors->has('descripcion') ? ' is-invalid' : '' }}" value="{{old('descripcion')}}">
                                    @if ($errors->has('descripcion'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('descripcion') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-12 offset-sm-5">
                                    <button type="button"  onclick="window.location='{{route('categorias.index')}}'" class="btn btn-secondary">Cancelar</button>
                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
