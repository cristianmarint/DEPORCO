@extends('layouts.admin')
@section('title','- Editar Categorias')
@section('content')

    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom"> Categoria</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/categorias'}}">Categorias</a></li>
            <li class="breadcrumb-item">Editar</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                @if($categorias != null)
                    <?php $bandera = 1; ?>
                {{--edit--}}

                <!-- Form Elements -->
                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h3 class="h4">Editar Categoria</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{route('categorias.update', $categorias->id_categoria)}}" method="POST" class="form-horizontal">
                                {{ method_field('PUT') }}
                                @csrf

                                <div class="form-group row">
                                    <label for="edit_categoria" class="form-control-label col-sm-3 ">Categoria</label>
                                    <div class="col-sm-9">
                                        <input id="edit_categoria" type="text" name="categoria" class="form-control {{ $errors->has('categoria') ? ' is-invalid' : '' }}" value="{{$categorias->categoria}}">
                                        @if ($errors->has('categoria'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('categoria') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="edit_descripcion" class="form-control-label col-sm-3 ">Descripcion</label>
                                    <div class="col-sm-9">
                                        <input id="edit_descripcion" type="text" name="descripcion" class="form-control {{ $errors->has('descripcion') ? ' is-invalid' : '' }}" value="{{$categorias->descripcion}}">
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
                @else
                    <?php $bandera =0;?>
                    <input type="hidden" value="<?php $bandera ?>" id="bandera">

                @endif
                    {{--fin edit--}}
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        $(document).ready(function () {
            var bandera = $('#bandera').val();
            if(bandera == 0){
                swal({
                        title: "......",
                        text: "No se encontraron resultados para la busqueda",
                        type: "error",
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Regresar!",
                        closeOnConfirm: false },
                    function(){
                        window.location = '{{route('categorias.index')}}';
                    });
            }
        })
    </script>
@endsection
