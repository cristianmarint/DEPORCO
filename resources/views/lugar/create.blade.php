@extends('layouts.admin')
@section('title','Nuevo Lugar')
@section('content')
    @if(Session::has('error'))
        <script>
            setTimeout(function(){
                swal("¡Algo ha salido mal!", "Ha habido un error al procesar la peticion, vuelte a intentarlo", "error");
            }, 500);
        </script>
    @endif
<div class="card-body">
    <form action="{{route('lugares.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
        @csrf
        
        <div class="form-group row">
            <label for="create_nombre" class="form-control-label col-sm-3">Nombre</label>
            <div class="col-sm-9">
                <input id="create_nombre" type="text" name="nombre" class="form-control{{ $errors->has('nombre') ? ' is-invalid' : '' }}" value="{{old('nombre')}}">
                @if ($errors->has('nombre'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('nombre') }}</strong>
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
            <div class="col-sm-12 offset-sm-5">
                <button type="button"  onclick="window.location='{{route('institutos.index')}}'" class="btn btn-secondary">Cancel</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </div>

    </form>

</div>


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

