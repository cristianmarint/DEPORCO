@extends('layouts.admin')
@section('title','Crear Equipo')
@section('content')

@if(Session::has('error'))
        <script>
            setTimeout(function(){
                swal("¡Algo ha salido mal!", "Ha habido un error al procesar la peticion, vuelte a intentarlo", "error");
            }, 500);
        </script>
@endif
<div class="card-body">
    <form action="{{route('equipos.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
        @csrf
        <div class="form-group row">
            <label for="create_logo" class="col-sm-3 form-control-label">Logo</label>
            <div class="col-sm-9">
                <input id="create_logo" type="file" name="logo" class="form-control{{ $errors->has('logo') ? ' is-invalid' : '' }}" accept="image/*">
                @if ($errors->has('logo'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('logo') }}</strong>
                        </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_calle" class="form-control-label col-sm-3">Nombre</label>
            <div class="col-sm-9">
                <input id="create_nombre" type="text" name="nombre" class="form-control{{ $errors->has('nombre') ? ' is-invalid' : '' }}" value="{{old('nombre')}}" placeholder="Nombre del equipo">
                @if ($errors->has('nombre'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('nombre') }}</strong>
                        </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
                <label for="create_colores" class="col-sm-3 form-control-label">Color de uniforme</label>
                <div class="col-sm-9">
                    <select name="colores" id="create_colores" class="form-control{{ $errors->has('colores') ? ' is-invalid' : '' }}">
                        <option value="0" >Seleccione un color</option>
                        @foreach($colores as $colors)
                            <option value="{{$colors->id}}">{{$colors->color}}</option>
                        @endforeach
                    </select>
                    @if ($errors->has('colores'))
                        <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('colores') }}</strong>
                            </span>
                    @endif
                </div>
        </div>
        
        <div class="form-group row">
            <label for="create_instituto" class="col-sm-3 form-control-label">Institución</label>
            <div class="col-sm-9">
                <select name="instituto" id="create_instituto" class="form-control{{ $errors->has('instituto') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione una Institución</option>
                    @foreach($institutos as $instituto)
                        <option value="{{$instituto->id}}">{{$instituto->nombre}}</option>
                    @endforeach
                </select>
                @if ($errors->has('instituto'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('instituto') }}</strong>
                        </span>
                @endif
            </div>
        </div>

    
        <div class="form-group row">
                <div class="col-sm-12 offset-sm-5">
                    <button type="button"  onclick="window.location='{{route('equipos.index')}}'" class="btn btn-secondary">Cancel</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </div>

    </form>
    
</div>
@endsection


