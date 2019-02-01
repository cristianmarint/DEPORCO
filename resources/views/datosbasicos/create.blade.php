@extends('layouts.admin')
@section('title','Datos basicos')
@section('content')
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('datosbasicos')}}">Datos basicos</a></li>
            <li class="breadcrumb-item">Crear</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                <!-- Form Elements -->
                <div class="card">
                    <div class="card-body">
                        <form action="{{route('datosbasicos.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                            @csrf
                            <div class="form-group row">
                                    <label for="create_foto" class="col-sm-3 form-control-label">Foto</label>
                                    <div class="col-sm-9">
                                        <input id="create_foto" type="file" name="foto" class="form-control{{ $errors->has('foto') ? ' is-invalid' : '' }}" accept="image/*">
                                        @if ($errors->has('foto'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('foto') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>
                            
                            <div class="form-group row">
                                <label for="create_calle" class="form-control-label col-sm-3">Cedula </label>
                                <div class="col-sm-9">
                                    <input id="create_cedula" type="text" name="cedula" class="form-control{{ $errors->has('cedula') ? ' is-invalid' : '' }}" value="{{old('cedula')}}" placeholder="Cedula o ducumento de identidad de la persona">
                                    @if ($errors->has('cedula'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('cedula') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_primer_nombre" class="form-control-label col-sm-3">Primer nombre </label>
                                <div class="col-sm-9">
                                    <input id="create_primer_nombre" type="text" name="primer_nombre" class="form-control{{ $errors->has('primer_nombre') ? ' is-invalid' : '' }}" value="{{old('primer_nombre')}}" placeholder="Primer nombre de la persona">
                                    @if ($errors->has('primer_nombre'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('primer_nombre') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_segundo_nombre" class="form-control-label col-sm-3">Segundo nombre </label>
                                <div class="col-sm-9">
                                    <input id="create_segundo_nombre" type="text" name="segundo_nombre" class="form-control{{ $errors->has('segundo_nombre') ? ' is-invalid' : '' }}" value="{{old('segundo_nombre')}}" placeholder="Segundo nombre de la persona">
                                    @if ($errors->has('segundo_nombre'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('segundo_nombre') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_primer_apellido" class="form-control-label col-sm-3">Primer apellido </label>
                                <div class="col-sm-9">
                                    <input id="create_primer_apellido" type="text" name="primer_apellido" class="form-control{{ $errors->has('primer_apellido') ? ' is-invalid' : '' }}" value="{{old('primer_apellido')}}" placeholder="Primer apellido de la persona">
                                    @if ($errors->has('primer_apellido'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('primer_apellido') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="create_segundo_apellido" class="form-control-label col-sm-3">Segundo apellido </label>
                                <div class="col-sm-9">
                                    <input id="create_segundo_apellido" type="text" name="segundo_apellido" class="form-control{{ $errors->has('segundo_apellido') ? ' is-invalid' : '' }}" value="{{old('segundo_apellido')}}" placeholder="Segundo apellido de la persona">
                                    @if ($errors->has('segundo_apellido'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('segundo_apellido') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="create_tipo_sangre" class="col-sm-3 form-control-label">Tipo de sangre</label>
                                <div class="col-sm-9">
                                    <select name="tipo_sangre" id="create_tipo_sangre" class="form-control{{ $errors->has('tipo_sangre') ? ' is-invalid' : '' }}">
                                        <option value="0" >Seleccione un tipo de sangre</option>
                                        @foreach($tiposangres as $tiposangre)
                                            <option value="{{$tiposangre->id}}">{{$tiposangre->tipo}}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->has('tipo_sangre'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('tipo_sangre') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="create_genero" class="col-sm-3 form-control-label">Genero</label>
                                <div class="col-sm-9">
                                    <select name="genero" id="create_genero" class="form-control{{ $errors->has('genero') ? ' is-invalid' : '' }}">
                                        <option value="0" >Seleccione un genero</option>
                                        @foreach($generos as $genero)
                                            <option value="{{$genero->id}}">{{$genero->genero}}</option>
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
                                <label for="create_eps" class="col-sm-3 form-control-label">EPS</label>
                                <div class="col-sm-9">
                                    <select name="eps" id="create_eps" class="form-control{{ $errors->has('eps') ? ' is-invalid' : '' }}">
                                        <option value="0" >Seleccione una EPS</option>
                                        @foreach($epss as $eps)
                                            <option value="{{$eps->id}}">{{$eps->nombre}}  {{ $eps->tipo }}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->has('eps'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('eps') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">

                                    <label for="create_tipo_telefono" class="col-sm-3 form-control-label">Telefono</label>
                                    <div class="col-sm-3">
                                        <select name="tipo_telefono" id="create_tipo_telefono" class="form-control{{ $errors->has('tipo_telefono') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un tipo</option>
                                            <option value="1" >Celular</option>
                                            <option value="2" >Fijo</option>
                                        </select>
                                        @if ($errors->has('tipo_telefono'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('tipo_telefono') }}</strong>
                                                </span>
                                        @endif
                                    </div>
    
                                    <div class="col-sm-6">
                                        <input id="create_telefono" type="text" name="telefono" class="form-control{{ $errors->has('telefono') ? ' is-invalid' : '' }}" value="{{old('telefono')}}" placeholder="Número Telefonico">
                                        @if ($errors->has('telefono'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('telefono') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                </div>

                            <div class="form-group row">
                                    <label for="create_email" class="form-control-label col-sm-3">Correo electronico </label>
                                    <div class="col-sm-9">
                                        <input id="create_email" type="email" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{old('email')}}" placeholder="Ingrese el correo electronico">
                                        @if ($errors->has('create_email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                            </div>

                            <div class="form-group row">
                                    <label for="create_departamento" class="col-sm-3 form-control-label">Departamento</label>
                                    <div class="col-sm-9">
                                        <select name="departamento" id="create_departamento" class="form-control{{ $errors->has('departamento') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un departamento</option>
                                            @foreach($departamentos as $departamento)
                                                <option value="{{$departamento->id}}">{{$departamento->nombre}}</option>
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
                                    <label for="create_municipio" class="col-sm-3 form-control-label">Municipio / Ciudad</label>
                                    <div class="col-sm-9">
                                        <select name="municipio" id="create_municipio" class="form-control{{ $errors->has('municipio') ? ' is-invalid' : '' }}">
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
                                        <label for="create_calle" class="form-control-label col-sm-3">Direccion</label>
                                        <div class="col-sm-4">
                                            <input id="create_calle" type="text" name="calle" class="form-control{{ $errors->has('calle') ? ' is-invalid' : '' }}" value="{{old('calle')}}" placeholder="Calle">
                                            @if ($errors->has('calle'))
                                                <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $errors->first('calle') }}</strong>
                                                    </span>
                                            @endif
                                        </div>
        
                                        <div class="col-sm-3">
                                            <input id="create_carrera" type="text" name="carrera" class="form-control{{ $errors->has('carrera') ? ' is-invalid' : '' }}" value="{{old('carrera')}}" placeholder="Carrera">
                                            @if ($errors->has('carrera'))
                                                <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $errors->first('carrera') }}</strong>
                                                    </span>
                                            @endif
                                        </div>
        
                                        <div class="col-sm-2">
                                            <input id="create_numero" type="text" name="numero" class="form-control{{ $errors->has('numero') ? ' is-invalid' : '' }}" value="{{old('numero')}}" placeholder="Número">
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
            </div>
        </div>
    </section>


@endsection
@section('scripts')
    <script type="text/javascript">
        $(document).ready(function(){
            var modelo_departamento = $('#create_departamento');
            modelo_departamento.change(function(){
                modelo_departamento.each(function () {
                    var departamento = modelo_departamento.val();

                    var modelo_municipio = $('#create_municipio');
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
                    })
                });
            });
        });
    </script>
@endsection 

