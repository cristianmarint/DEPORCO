@extends('layouts.admin')
@section('title','Editar Institucion')
@section('content')
    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Instituto</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/institutos')}}">Instituto</a></li>
            <li class="breadcrumb-item">Editar</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                @if($instituto != null)
                    <?php $bandera = 1; ?>

                    <header class="page-header">
                        <div class="container-fluid">
                            <h2 class="no-margin-bottom">{{$instituto->nombre_institucion}}</h2>
                            <img src="{{asset($instituto->logo)}}"  class="img-fluid rounded-circle" width="60vh" style="margin-left: 50%; ">
                        </div>
                    </header>
                    
                    <!-- Form Elements -->
                    <div class="card">
                        <div class="card-body">
                            <form action="{{route('institutos.update', $instituto->id_instituto)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                                {{ method_field('PUT') }}
                                @csrf

                                <div class="form-group row">
                                    <label for="edit_nit" class="form-control-label col-sm-3 ">Nit</label>
                                    <div class="col-sm-9">
                                        <input id="edit_nit" type="text" name="nit" class="form-control {{ $errors->has('nit') ? ' is-invalid' : '' }}" value="{{$instituto->nit}}">
                                        @if ($errors->has('nit'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('nit') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
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
                                        <input id="edit_nombre_institucion" type="text" name="nombre_institucion" class="form-control{{ $errors->has('nombre_institucion') ? ' is-invalid' : '' }}" value="{{$instituto->nombre_institucion}}">
                                        @if ($errors->has('nombre_institucion'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('nombre_institucion') }}</strong>
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
                                </div>


                                <div class="form-group row">
                                    <label for="edit_departamento" class="col-sm-3 form-control-label">Departamento</label>
                                    <div class="col-sm-9">
                                        <select name="departamento" id="edit_departamento" class="form-control{{ $errors->has('departamento') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un departamento</option>
                                            @foreach($departamentos as $departamento)
                                                <option value="{{$departamento->id_departamento}}" {{$departamento->id_departamento ==  $instituto->id_departamento ? 'selected':''}}>{{$departamento->departamento}}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('departamento'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('departamento') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="edit_municipio" class="col-sm-3 form-control-label">Municipio / Ciudad</label>
                                    <div class="col-sm-9">
                                        <select name="municipio" id="edit_municipio" class="form-control{{ $errors->has('municipio') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un Municipio / Ciudad</option>
                                        </select>
                                        @if ($errors->has('municipio'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('municipio') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="edit_tipo_educacion" class="col-sm-3 form-control-label">Tipo de Educacion</label>
                                    <div class="col-sm-9">
                                        <select name="tipo_educacion" id="edit_tipo_educacion" class="form-control{{ $errors->has('tipo_educacion') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un tipo</option>
                                            <option value="1" {{$instituto->tipo_educacion == "publico" ? 'selected':''}}>Publico</option>
                                            <option value="2" {{$instituto->tipo_educacion == "privado" ? 'selected':''}}>Privado</option>
                                        </select>
                                        @if ($errors->has('tipo_educacion'))
                                            <span class="invalid-feedback" role="alert">
                                                   <strong>{{ $errors->first('tipo_educacion') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="create_direccion" class="form-control-label col-sm-3">Direcci&oacute;n      </label>
                                    <div class="col-sm-9">
                                        <input id="create_direccion" type="text" name="direccion" class="form-control{{ $errors->has('direccion') ? ' is-invalid' : '' }}" value="{{$instituto->direccion}}">
                                        @if ($errors->has('direccion'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('direccion') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="edit_telefono" class="form-control-label col-sm-3">Telefono      </label>
                                    <div class="col-sm-9">
                                        <input id="edit_telefono" type="text" name="telefono" class="form-control{{ $errors->has('telefono') ? ' is-invalid' : '' }}" value="{{$instituto->telefono}}">
                                        @if ($errors->has('telefono'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('telefono') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-12 offset-sm-5">
                                        <button type="button"  onclick="window.location='{{route('institutos.index')}}'" class="btn btn-secondary">Cancel</button>
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>
                @else
                    <?php $bandera=0 ?>
                    <input type="hidden" value="<?php $bandera?>" id="bandera">
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
                        window.location = '{{route('institutos.index')}}';
                    });
            }
        });

        $(document).ready(function () {
            var departamento = $('#edit_departamento').val();
            $.ajax({
                url: "/institutos/municipios/"+departamento,
                type: 'GET'
            }).done(function (data) {
                $.each(data, function(key, item) {
                    $('#edit_municipio').append("<option value='" + item.id_municipio + "'>" + item.municipio + "</option>");
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
                            modelo_municipio.append("<option value='" + item.id_municipio + "'>" + item.municipio + "</option>");
                        });
                    }).fail( function() {
                        console.log('Error');
                    });
                });
            });
        });
        
        
    </script>
@endsection



