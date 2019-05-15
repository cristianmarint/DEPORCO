@extends('layouts.admin')
@section('title','Datos Basicos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/datosbasicos')}}">Datos Basicos</a></li>
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


                <form action="{{route('datosbasicos.update', $datosbasicos->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                    {{ method_field('PUT') }}
                    @csrf
                    
                    <div class="form-group row">
                            <label for="foto_actual" class="col-sm-3 form-control-label">Foto actual</label>
                            <div class="col-sm-4" style="">
                                <img src="{{asset($datosbasicos->foto)}}"  class="mx-auto d-block rounded" width="150vh">
                            </div>
                            <div class="col-sm-4"></div>
                    </div> 

                    <div class="form-group row">
                            <label for="edit_foto" class="col-sm-3 form-control-label">Nueva foto</label>
                            <div class="col-sm-9">
                                <input id="edit_foto" type="file" name="foto" class="form-control{{ $errors->has('foto') ? ' is-invalid' : '' }}" accept="image/*">
                                @if ($errors->has('foto'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('foto') }}</strong>
                                    </span>
                                @endif
                            </div>
                    </div>
                     
                        
                    <div class="form-group row">
                        <label for="edit_cedula" class="form-control-label col-sm-3">Cedula</label>
                        <div class="col-sm-9">
                            <input id="edit_cedula" type="number" name="cedula" class="form-control{{ $errors->has('cedula') ? ' is-invalid' : '' }}" value="{{$datosbasicos->cedula}}">
                            @if ($errors->has('cedula'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('cedula') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                        
                    <div class="form-group row">
                        <label for="edit_primer_nombre_datosbasicos" class="form-control-label col-sm-3">Primer nombre</label>
                        <div class="col-sm-9">
                            <input id="edit_primer_nombre_datosbasicos" type="text" name="primer_nombre" class="form-control{{ $errors->has('primer_nombre') ? ' is-invalid' : '' }}" value="{{$datosbasicos->primer_nombre}}">
                            @if ($errors->has('primer_nombre'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('primer_nombre') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                        
                    <div class="form-group row">
                        <label for="edit_segundo_nombre_datosbasicos" class="form-control-label col-sm-3">Segundo nombre</label>
                        <div class="col-sm-9">
                            <input id="edit_segundo_nombre_datosbasicos" type="text" name="segundo_nombre" class="form-control{{ $errors->has('segundo_nombre') ? ' is-invalid' : '' }}" value="{{$datosbasicos->segundo_nombre}}">
                            @if ($errors->has('segundo_nombre'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('segundo_nombre') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                        
                    <div class="form-group row">
                        <label for="edit_primer_apellido_datosbasicos" class="form-control-label col-sm-3">Primer apellido</label>
                        <div class="col-sm-9">
                            <input id="edit_primer_apellido_datosbasicos" type="text" name="primer_apellido" class="form-control{{ $errors->has('primer_apellido') ? ' is-invalid' : '' }}" value="{{$datosbasicos->primer_apellido}}">
                            @if ($errors->has('primer_apellido'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('primer_apellido') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                        
                    <div class="form-group row">
                        <label for="edit_segundo_apellido_datosbasicos" class="form-control-label col-sm-3">Segundo apellido</label>
                        <div class="col-sm-9">
                            <input id="edit_segundo_apellido_datosbasicos" type="text" name="segundo_apellido" class="form-control{{ $errors->has('segundo_apellido') ? ' is-invalid' : '' }}" value="{{$datosbasicos->segundo_apellido}}">
                            @if ($errors->has('segundo_apellido'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('segundo_apellido') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="edit_tiposangre" class="col-sm-3 form-control-label">Tipo de sangre</label>
                        <div class="col-sm-9">
                            <select name="tiposangre" id="edit_tiposangre" class="form-control{{ $errors->has('tiposangre') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione un tipo de sangre</option>
                                @foreach($tiposangres as $tiposangre)
                                    <option value="{{$tiposangre->id}}"     {{$tiposangre->id == $datosbasicos->tipo_sangre_id ? 'selected':''}}>{{ $tiposangre->tipo }}</option>
                                @endforeach     
                            </select>
                            @if ($errors->has('tiposangre'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('tiposangre') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="edit_genero" class="col-sm-3 form-control-label">Genero</label>
                        <div class="col-sm-9">
                            <select name="genero" id="edit_genero" class="form-control{{ $errors->has('genero') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione un genero</option>
                                @foreach($generos as $genero)
                                    <option value="{{$genero->id}}"     {{$genero->id == $datosbasicos->genero_id ? 'selected':''}}>{{ $genero->genero }}</option>
                                @endforeach     
                            </select>
                            @if ($errors->has('genero'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('genero') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="edit_eps" class="col-sm-3 form-control-label">Eps</label>
                        <div class="col-sm-9">
                            <select name="eps" id="edit_eps" class="form-control{{ $errors->has('eps') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione un genero</option>
                                @foreach($epss as $eps)
                                    <option value="{{$eps->id}}"     {{$eps->id == $datosbasicos->eps_id ? 'selected':''}}>{{ $eps->nombre }} {{ $eps->tipo }}</option>
                                @endforeach     
                            </select>
                            @if ($errors->has('genero'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('genero') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    
                    <div class="form-group row">
                            <label for="edit_telefono" class="form-control-label col-sm-3">Telefono</label>
    
                            <div class="col-sm-3">
                                <select name="tipo_telefono" id="create_tipo_telefono" class="form-control{{ $errors->has('tipo_telefono') ? ' is-invalid' : '' }}">
                                    <option value="0" >Seleccione un tipo</option>
                                    @if($datosbasicos->telefono->numero)
                                        <option value="1" {{$datosbasicos->telefono->tipo == 'Celular' ? 'selected=selected':''}}>Celular</option>
                                        <option value="2" {{$datosbasicos->telefono->tipo == 'Fijo' ? 'selected=selected':''}}>Fijo</option>
                                    @else
                                        <option value="1">Celular</option>
                                        <option value="2">Fijo</option>
                                    @endif
                                </select>
                                @if ($errors->has('tipo_telefono'))
                                    <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('tipo_telefono') }}</strong>
                                        </span>
                                @endif
                            </div>
                            <div class="col-sm-6">
                                <input id="edit_telefono" type="number" name="telefono" class="form-control{{ $errors->has('telefono') ? ' is-invalid' : '' }}" value="@isset($datosbasicos->telefono){{$datosbasicos->telefono->numero}}@endisset">
                                @if ($errors->has('telefono'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('telefono') }}</strong>
                                    </span>
                                @endif
                            </div>
                    </div>
                        
                    <div class="form-group row">
                            <label for="edit_email_datosbasicos" class="form-control-label col-sm-3">Correo electronico / email</label>
                            <div class="col-sm-9">
                                <input id="edit_email_datosbasicos" type="email" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{$datosbasicos->email}}">
                                @if ($errors->has('segundo_apellido'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
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
                                        <option value="{{$departamento->id}}" {{$departamento->id ==  $datosbasicos->municipio->departamento_id ? 'selected':''}}>{{$departamento->nombre}}</option>
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
                            <label for="edit_direccion" class="form-control-label col-sm-3">Direcci&oacute;n      </label>
                            <div class="col-sm-4">
                                <input id="create_calle" type="text" name="calle" class="form-control{{ $errors->has('calle') ? ' is-invalid' : '' }}" value="{{$datosbasicos->direccion->calle}}" placeholder="Calle">
                                @if ($errors->has('calle'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('calle') }}</strong>
                                    </span>
                                @endif
                            </div>
    
                            <div class="col-sm-3">
                                <input id="create_carrera" type="text" name="carrera" class="form-control{{ $errors->has('carrera') ? ' is-invalid' : '' }}" value="{{$datosbasicos->direccion->carrera}}" placeholder="Carrera">
                                @if ($errors->has('carrera'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('carrera') }}</strong>
                                    </span>
                                @endif
                            </div>
    
                            <div class="col-sm-2">
                                <input id="create_numero" type="text" name="numero" class="form-control{{ $errors->has('numero') ? ' is-invalid' : '' }}" value="{{$datosbasicos->direccion->numero}}" placeholder="Número">
                                @if ($errors->has('numero'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('numero') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                    <div class="form-group row">
                        <div class="col-sm-12 offset-sm-5">
                            <button type="button"  onclick="window.location='{{route('datosbasicos.index')}}'" class="btn btn-secondary">Cancel</button>
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
            var departamento = modelo_departamento.val();
            console.log(departamento);
            modelo_departamento.change(function(){
                modelo_departamento.each(function () {
                    var modelo_municipio = $('#edit_municipio');
                    modelo_municipio.empty();
                    modelo_municipio.append("<option value='0' >Seleccione un Municipio / Ciudad</option>");
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