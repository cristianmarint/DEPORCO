@extends('layouts.admin')
@section('title','Torneos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/torneos')}}">Torneos</a></li>
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


                <form action="{{route('torneos.update', $torneo->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                    {{ method_field('PUT') }}
                    @csrf
                        
                    <div class="form-group row">
                        <label for="edit_nombre" class="form-control-label col-sm-3">Nombre</label>
                        <div class="col-sm-9">
                            <input id="edit_nombre" type="text" name="nombre" class="form-control{{ $errors->has('nombre') ? ' is-invalid' : '' }}" value="{{$torneo->nombre}}">
                            @if ($errors->has('nombre'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('nombre') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="edit_categoria" class="col-sm-3 form-control-label">Categoria</label>
                        <div class="col-sm-9">
                            <select name="categoria" id="edit_categoria" class="form-control{{ $errors->has('categoria') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione una categoria</option>
                                @foreach($categorias as $categoria)
                                    <option value="{{$categoria->id}}" {{ $categoria->id == $torneo->categoria_id ? 'selected':'' }}>{{$categoria->descripcion}}</option>
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
                        <label for="edit_temporada" class="col-sm-3 form-control-label">Temporada</label>
                        <div class="col-sm-9">
                            <select name="temporada" id="edit_temporada" class="form-control{{ $errors->has('temporada') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione una categoria</option>
                                @foreach($temporadas as $temporada)
                                    <option value="{{$temporada->id}}" {{ $temporada->id == $torneo->temporada_id ? 'selected':'' }}>{{$temporada->descripcion}}</option>
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
        </div>
    </section>
@endsection
