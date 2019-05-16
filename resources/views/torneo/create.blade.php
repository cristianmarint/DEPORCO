@extends('layouts.admin')
@section('title','Crear Torneo')
@section('content')
@if(Session::has('error'))
    <script>
        setTimeout(function(){
            swal("¡Algo ha salido mal!", "Ha habido un error al procesar la peticion, vuelte a intentarlo", "error");
        }, 500);
    </script>
@endif
<div class="card-body">
    <form action="{{route('torneos.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
        @csrf
        
        <div class="form-group row">
            <label for="create_nombre" class="form-control-label col-sm-3">Nombre </label>
            <div class="col-sm-9">
                <input id="create_nombre" type="text" name="nombre" class="form-control{{ $errors->has('nombre') ? ' is-invalid' : '' }}" value="{{old('nombre')}}" placeholder="Nombre el torneo">
                @if ($errors->has('nombre'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('nombre') }}</strong>
                </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_categoria" class="col-sm-3 form-control-label">Categoria</label>
            <div class="col-sm-9">
                <select name="categoria" id="create_categoria" class="form-control{{ $errors->has('categoria') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione una categoria</option>
                    @foreach($categorias as $categoria)
                        <option value="{{$categoria->id}}">{{$categoria->descripcion}}</option>
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
            <label for="create_temporada" class="col-sm-3 form-control-label">Temporada</label>
            <div class="col-sm-9">
                <select name="temporada" id="create_temporada" class="form-control{{ $errors->has('temporada') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione una temporada</option>
                    @foreach($temporadas as $temporada)
                        <option value="{{$temporada->id}}">{{$temporada->descripcion}}</option>
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
                <button type="button"  onclick="window.location='{{route('torneos.index')}}'" class="btn btn-secondary">Cancel</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </div>
    </form>
</div>
@endsection

