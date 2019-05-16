@extends('layouts.admin')
@section('title','Editar Temporada')
@section('content')

<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>

@if(Session::has('error'))
    <script>
        setTimeout(function(){
            swal("¡Algo ha salido mal!", "Ha habido un error al procesar la peticion, vuelte a intentarlo", "error");
        }, 500);
    </script>
@endif

<div class="card-body">
    <form action="{{route('temporadas.update', $temporada->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
        {{ method_field('PUT') }}
        @csrf
            
        <div class="form-group row">
            <label for="edit_descripcion" class="form-control-label col-sm-3">Descripción</label>
            <div class="col-sm-9">
                <input id="edit_temporada" type="text" name="descripcion" class="form-control{{ $errors->has('descripcion') ? ' is-invalid' : '' }}" value="{{$temporada->descripcion}}">
                @if ($errors->has('descripcion'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('descripcion') }}</strong>
                    </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_inicio" class="form-control-label col-sm-3">Fecha de inicio </label>
            <div class="col-sm-9">
                <input id="create_inicio" type="text" name="fecha_inicio" class="date form-control{{ $errors->has('fecha_inicio') ? ' is-invalid' : '' }}" value="{{$temporada->fecha_inicio}}" placeholder="Ingrese la fecha de inicio">
                @if ($errors->has('fecha_inicio'))
                <span class="invalid-feedback" role="alert">
                    <strong>La {{ $errors->first('fecha_inicio') }}</strong>
                </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_fin" class="form-control-label col-sm-3">Fecha de fin </label>
            <div class="col-sm-9">
                <input id="create_fin" type="text" name="fecha_fin" class="date form-control{{ $errors->has('fecha_fin') ? ' is-invalid' : '' }}" value="{{$temporada->fecha_fin}}" placeholder="Ingrese la fecha de fin">
                @if ($errors->has('fecha_fin'))
                <span class="invalid-feedback" role="alert">
                    <strong>La {{ $errors->first('fecha_fin') }}</strong>
                </span>
                @endif
            </div>
        </div>

        <script type="text/javascript">
            $('.date').datepicker({  
                format: 'yyyy/mm/dd'
                });  
        </script>  

        <div class="form-group row">
            <div class="col-sm-12 offset-sm-5">
                <button type="button"  onclick="window.location='{{route('temporadas.index')}}'" class="btn btn-secondary">Cancel</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </div>


    </form>

</div>
@endsection
