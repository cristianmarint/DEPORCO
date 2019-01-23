@extends('layouts.admin')
@section('title','- Ver Categorias')
@section('content')


    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Categoria</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/categorias'}}">Categorias</a></li>
            <li class="breadcrumb-item">Ver</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                @if($categorias != null)
                    <?php $bandera = 1; ?>
                    <div class="form-group row">
                        <label for="categoria" class="form-control-label col-sm-3 ">Numero Temporada</label>
                        <div class="col-sm-9">
                            <input id="categoria" type="text" name="categoria" class="form-control" value="{{$categorias->categoria}}" readonly>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="descripcion" class="form-control-label col-sm-3 ">Descripcion Temporada</label>
                        <div class="col-sm-9">
                            <input id="descripcion" type="text" name="descripcion" class="form-control" value="{{$categorias->descripcion}}"readonly>
                        </div>
                    </div>

                </div>
            @else
                <?php $bandera =0;?>
                <input type="hidden" value="<?php $bandera ?>" id="bandera">

            @endif
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


