@extends('layouts.admin')
@section('title','- Editar Inscripcion')
@section('content')

    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom"> Inscripciones </h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{'/inscripciones_equipo'}}">Inscripciones</a></li>
            <li class="breadcrumb-item">Editar</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
            @if($inscripcion != null)
                <?php $bandera = 1; ?>
                {{--edit--}}

                <!-- Form Elements -->
                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h3 class="h4">Editar Inscripcion</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{route('inscripciones_equipo.update', $inscripcion->id_inscripcion)}}" method="POST" class="form-horizontal">
                                {{ method_field('PUT') }}
                                @csrf

                                <div class="form-group row">
                                    <label for="select_torneo" class="col-sm-3 form-control-label">Torneo</label>
                                    <div class="col-sm-9">
                                        <select name="torneo" id="select_torneo" class="form-control{{ $errors->has('torneo') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un torneo</option>
                                            @foreach($torneos as $torneo)
                                                <option value="{{$torneo->id_torneo}}" {{$torneo->id_torneo == $inscripcion->id_inscripcion ? 'selected':''}}>{{$torneo->nombre_torneo}} / {{$torneo->numero_temporada}} / {{$torneo->categoria}}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('torneo'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('torneo') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="select_equipo" class="col-sm-3 form-control-label">Equipo</label>
                                    <div class="col-sm-9">
                                        <select name="equipo" id="select_equipo" class="form-control{{ $errors->has('equipo') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un equipo</option>
                                        </select>
                                        @if ($errors->has('equipo'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('equipo') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <div class="col-sm-12 offset-sm-5">
                                        <button type="button"  onclick="window.location='{{route('inscripciones_equipo.index')}}'" class="btn btn-secondary">Cancelar</button>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>

                    {{--fin edit--}}
                @else
                    <?php $bandera =0;?>
                    <input type="hidden" value="<?php $bandera ?>" id="bandera">

                @endif
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script type="text/javascript">
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
                        window.location = '{{route('inscripciones_equipo.index')}}';
                    });
            }
        });

        $(document).ready(function () {
            var torneo = $('#select_torneo').val();
            $.ajax({
                url: "/inscripciones_equipo/torneo/"+torneo,
                type: 'GET'
            }).done(function (data) {
                $.each(data, function(key, item) {
                    $('#select_equipo').append("<option value='" + item.id_equipo + "'>" + item.nombre_equipo + "</option>");
                });
            }).fail( function() {
                console.log('Error');
            });
        });

        $(document).ready(function(){
            var modelo_torneo = $('#select_torneo');
            modelo_torneo.change(function(){
                modelo_torneo.each(function () {
                    var torneo = modelo_torneo.val();

                    var modelo_equipo = $('#select_equipo');
                    modelo_equipo.empty();
                    modelo_equipo.append("<option value='0' >Seleccione un Equipo</option>");
                    console.log(torneo);
                    $.ajax({
                        url: "/inscripciones_equipo/torneo/"+torneo,
                        type: 'GET'
                    }).done(function (data) {
                        $.each(data, function(key, item) {
                            modelo_equipo.append("<option value='" + item.id_equipo + "'>" + item.nombre_equipo + "</option>");
                        });
                    }).fail( function() {
                        console.log('Error');
                    });
                });
            });
        });
    </script>
    @endsection