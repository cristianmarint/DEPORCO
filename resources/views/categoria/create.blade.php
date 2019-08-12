@extends('layouts.admin')
@section('title','Crear Categoria')
@section('content')
    @if(Session::has('error'))
        <script>
            setTimeout(function(){
                swal("¡Algo ha salido mal!", "Ha habido un error al procesar la peticion, vuelte a intentarlo", "error");
            }, 500);
        </script>
    @endif
    <div class="card-body">
        <form action="{{route('categorias.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
            @csrf
            
            <div class="form-group row">
                <label for="create_descripcion" class="form-control-label col-sm-3">Descripcion </label>
                <div class="col-sm-9">
                    <input id="create_descripcion" type="text" name="descripcion" class="form-control{{ $errors->has('descripcion') ? ' is-invalid' : '' }}" value="{{old('descripcion')}}" placeholder="Describa la categoria">
                    @if ($errors->has('descripcion'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('descripcion') }}</strong>
                    </span>
                    @endif
                </div>
            </div>

            
            <div class="form-group row">
                <div class="col-sm-12 offset-sm-5">
                    <button type="button"  onclick="window.location='{{route('categorias.index')}}'" class="btn btn-secondary">Cancel</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </div>

        </form>
        
    </div>
@endsection

