@extends('layouts.admin')
@section('title','Instituciones')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/institutos')}}">Instituciones</a></li>
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



                <form action="{{route('institutos.update', $instituto->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
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
                    </div>


                    <div class="form-group row">
                        <label for="edit_departamento" class="col-sm-3 form-control-label">Departamento</label>
                        <div class="col-sm-9">
                            <select name="departamento" id="edit_departamento" class="form-control{{ $errors->has('departamento') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione un departamento</option>
                                @foreach($departamentos as $departamento)
                                    <option value="{{$departamento->id}}" {{$departamento->id ==  $instituto->municipio->departamento_id ? 'selected':''}}>{{$departamento->nombre}}</option>
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
                                @foreach($tiposEducacion as $tipoEducacion)
                                    <option value="{{$tipoEducacion->id}}" {{$tipoEducacion->id ==  $instituto->tipo_educacion->id ? 'selected':''}}>{{$tipoEducacion->tipo}}</option>
                                @endforeach

                            </select>
                            @if ($errors->has('tipo_educacion'))
                                <span class="invalid-feedback" role="alert">
                                       <strong>{{ $errors->first('tipo_educacion') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="edit_direccion" class="form-control-label col-sm-3">Direcci&oacute;n      </label>
                        <div class="col-sm-4">
                            <input id="create_calle" type="text" name="calle" class="form-control{{ $errors->has('calle') ? ' is-invalid' : '' }}" value="{{$instituto->direccion->calle}}" placeholder="Calle">
                            @if ($errors->has('calle'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('calle') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="col-sm-3">
                            <input id="create_carrera" type="text" name="carrera" class="form-control{{ $errors->has('carrera') ? ' is-invalid' : '' }}" value="{{$instituto->direccion->carrera}}" placeholder="Carrera">
                            @if ($errors->has('carrera'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('carrera') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="col-sm-2">
                            <input id="create_numero" type="text" name="numero" class="form-control{{ $errors->has('numero') ? ' is-invalid' : '' }}" value="{{$instituto->direccion->numero}}" placeholder="Número">
                            @if ($errors->has('numero'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('numero') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="edit_telefono" class="form-control-label col-sm-3">Telefono      </label>

                        <div class="col-sm-3">
                            <select id="edit_tipo_telefono" name="tipo_telefono" class="form-control{{ $errors->has('tipo_telefono') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione un tipo</option>
                                <option value="1" {{$instituto->telefono->tipo == 'Celular' ? 'selected':''}}>Celular</option>
                                <option value="2" {{$instituto->telefono->tipo == 'Fijo' ? 'selected':''}}>Fijo</option>
                            </select>
                            @if ($errors->has('tipo_telefono'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('tipo_telefono') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="col-sm-6">
                            <input id="edit_telefono" type="text" name="telefono" class="form-control{{ $errors->has('telefono') ? ' is-invalid' : '' }}" value="{{$instituto->telefono->numero}}">
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
    </section>
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

