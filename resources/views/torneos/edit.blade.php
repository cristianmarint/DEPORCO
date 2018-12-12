@extends('layouts.admin')
@section('title','- Editar Torneos')
@section('content')

    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom"> Torneo </h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/torneos'}}">Torneos</a></li>
            <li class="breadcrumb-item">Editar</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
            @if($torneo != null)
                <?php $bandera = 1; ?>
                {{--edit--}}

                <!-- Form Elements -->
                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h3 class="h4">Editar Torneo</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{route('torneos.update', $torneo->id_torneo)}}" method="POST" class="form-horizontal">
                                {{ method_field('PUT') }}
                                @csrf

                                <div class="form-group row">
                                    <label for="nombre_torneo" class="form-control-label col-sm-3 ">Nombre Torneo</label>
                                    <div class="col-sm-9">
                                        <input id="nombre_torneo" type="text" name="nombre_torneo" class="form-control {{ $errors->has('nombre_torneo') ? ' is-invalid' : '' }}" value="{{$torneo->nombre_torneo}}">
                                        @if ($errors->has('nombre_torneo'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('nombre_torneo') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="select_categoria" class="col-sm-3 form-control-label">Categoria</label>
                                    <div class="col-sm-9">
                                        <select name="categoria" id="select_categoria" class="form-control{{ $errors->has('categoria') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione una categoria</option>
                                            @foreach($categorias as $categoria)
                                                <option value="{{$categoria->id_categoria}}" {{$categoria->id_categoria == $torneo->id_categoria ? 'selected':''}}>{{$categoria->categoria}}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('categoria'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('categoria') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="select_temporada" class="col-sm-3 form-control-label">Temporada</label>
                                    <div class="col-sm-9">
                                        <select name="temporada" id="select_temporada" class="form-control{{ $errors->has('temporada') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione una categoria</option>
                                            @foreach($temporadas as $temporada)
                                                <option value="{{$temporada->id_temporada}}" {{$temporada->id_temporada == $torneo->id_temporada ? 'selected':''}}>{{$temporada->numero_temporada}}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('temporada'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('temporada') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <div class="col-sm-12 offset-sm-5">
                                        <button type="button"  onclick="window.location='{{route('temporadas.index')}}'" class="btn btn-secondary">Cancelar</button>
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
                        window.location = '{{route('torneos.index')}}';
                    });
            }
        })
    </script>
@endsection

