@extends('layouts.admin')
@section('title','Enfrentamientos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/enfrentamientos')}}">Enfrentamientos</a></li>
            <li class="breadcrumb-item">Editar</li>
        </ul>
    </div>

    @if(Session::has('error'))
        <script>
            setTimeout(function(){
                swal("¡Algo ha salido mal!", "Ha habido un error al procesar la peticion, vuelte a intentarlo", "error");
            }, 500);
        </script>
    @endif

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">



                <form action="{{route('enfrentamientos.update', $enfrentamiento->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                    {{ method_field('PUT') }}
                    @csrf

                    <div class="form-group row">
                        <label for="edit_nit" class="form-control-label col-sm-3 ">Equipo Local</label>
                        <div class="col-sm-9">
                            <input id="edit_equipo_local" type="text" name="equipo_local" class="form-control {{ $errors->has('equipo_local') ? ' is-invalid' : '' }}" value="{{$enfrentamiento->inscripcion_equipo_local->equipo->nombre}}">
                            @if ($errors->has('equipo_local'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('equipo_local') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    {{-- <div class="form-group row">
                        <label for="edit_codigo_dane" class="form-control-label col-sm-3">Codigo Dane      </label>
                        <div class="col-sm-9">
                            <input id="edit_codigo_dane" type="text" name="codigo_dane" class="form-control{{ $errors->has('codigo_dane') ? ' is-invalid' : '' }}" value="{{$instituto->codigo_dane}}">
                            @if ($errors->has('codigo_dane'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('codigo_dane') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="edit_nombre_institucion" class="form-control-label col-sm-3">Nombre Instituci&oacute;n      </label>
                        <div class="col-sm-9">
                            <input id="edit_nombre_institucion" type="text" name="nombre" class="form-control{{ $errors->has('nombre') ? ' is-invalid' : '' }}" value="{{$instituto->nombre}}">
                            @if ($errors->has('nombre'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('nombre') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="edit_logo" class="col-sm-3 form-control-label">Logo/escudo</label>
                        <div class="col-sm-9">
                            <input id="edit_logo" type="file" name="logo" class="form-control{{ $errors->has('logo') ? ' is-invalid' : '' }}" accept="image/*">
                            @if ($errors->has('logo'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('logo') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div> --}}
@endsection

@section('scripts')
    <script type="text/javascript">
        $(document).ready(function () {
            var departamento = $('#edit_departamento').val();
            $.ajax({
                url: "/institutos/municipios/"+departamento,
                type: 'GET'
            }).done(function (data) {
                $.each(data, function(key, item) {
                    $('#edit_municipio').append("<option value='" + item.id + "'>" + item.nombre + "</option>");
                });
            }).fail( function() {
                console.log('Error');
            });
        });

        $(document).ready(function(){
            var modelo_departamento = $('#edit_departamento');
            modelo_departamento.change(function(){
                modelo_departamento.each(function () {
                    var departamento = modelo_departamento.val();
                    var modelo_municipio = $('#edit_municipio');
                    modelo_municipio.empty();
                    modelo_municipio.append("<option value='0' >Seleccione un Municipio / Ciudad</option>");
                    console.log(departamento);
                    $.ajax({
                        url: "/institutos/municipios/"+departamento,
                        type: 'GET'
                    }).done(function (data) {
                        $.each(data, function(key, item) {
                            modelo_municipio.append("<option value='" + item.id + "'>" + item.nombre + "</option>");
                        });
                    }).fail( function() {
                        console.log('Error');
                    });
                });
            });
        });


    </script>
@endsection

