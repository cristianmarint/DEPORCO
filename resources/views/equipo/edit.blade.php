@extends('layouts.admin')
@section('title','Equipos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/equipos')}}">Equipos</a></li>
            <li class="breadcrumb-item">Editar</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">


                <form action="{{route('equipos.update', $equipo->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                    {{ method_field('PUT') }}
                    @csrf
                    
                    <div class="form-group row">
                            {{-- <div class="col-sm-4"></div> --}}
                            <label class="col-sm-4 form-control-label">Logo actual</label>
                            <div class="col-sm-4" style="">
                                <img src="{{asset($equipo->logo)}}"  class="mx-auto d-block" width="150vh">
                            </div>
                            <div class="col-sm-4"></div>
                        </div>  
                        
                    <div class="form-group row">
                        <label for="edit_logo" class="col-sm-3 form-control-label">Logo nuevo</label>
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
                        <label for="edit_nombre_equipo" class="form-control-label col-sm-3">Nombre</label>
                        <div class="col-sm-9">
                            <input id="edit_nombre_equipo" type="text" name="nombre" class="form-control{{ $errors->has('nombre') ? ' is-invalid' : '' }}" value="{{$equipo->nombre}}">
                            @if ($errors->has('nombre'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('nombre') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    
                    <div class="form-group row">
                            <label for="edit_colores" class="col-sm-3 form-control-label">Color de uniforme</label>
                            <div class="col-sm-9">
                                <select name="colores" id="edit_colores" class="form-control{{ $errors->has('colores') ? ' is-invalid' : '' }}">
                                    <option value="0" >Seleccione un color</option>
                                    @foreach($colores as $colors)
                                        <option value="{{$colors->id}}" {{ $colors->id == $equipo->colores_id ? 'selected':'' }}>{{$colors->color}}</option>
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
                        <label for="edit_instituto" class="col-sm-3 form-control-label">Institución</label>
                        <div class="col-sm-9">
                            <select name="instituto" id="edit_instituto" class="form-control{{ $errors->has('instituto') ? ' is-invalid' : '' }}">
                                <option value="0" >Seleccione una Institución</option>
                                @foreach($institutos as $instituto)
                                    <option value="{{$instituto->id}}"     {{$instituto->id == $equipo->instituto_id ? 'selected':''}}>{{ $instituto->nombre }}</option>
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
        </div>
    </section>
@endsection
