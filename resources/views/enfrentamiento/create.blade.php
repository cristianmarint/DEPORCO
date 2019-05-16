@extends('layouts.admin')
@section('title','Nuevo Enfrentamiento')
@section('content')
   
    @if(Session::has('error'))
        <script>
            setTimeout(function(){
                swal("¡Algo ha salido mal!", "Ha habido un error al procesar la peticion, vuelte a intentarlo", "error");
            }, 500);
        </script>
    @endif
<div class="card-body">
    <form action="{{route('enfrentamientos.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
        @csrf
        <div class="row form-group ">
            <h2 class="alert-danger mx-auto ">Se debe hacer que el select de los equipos no permita seleccionar al mismo y registrarlo</h2>
        </div>
        <div class="form-group row">
            <label for="create_torneo" class="col-sm-3 form-control-label">Torneo</label>
            <div class="col-sm-9">
                <select name="torneo" id="create_torneo" class="form-control{{ $errors->has('torneo') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione un torneo</option>
                    @foreach($torneos as $torneo)
                        <option value="{{$torneo->id}}">{{$torneo->nombre}}</option>
                    @endforeach
                </select>
                @if ($errors->has('torneo'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('torneo') }}</strong>
                        </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_lugar" class="col-sm-3 form-control-label">Lugares</label>
            <div class="col-sm-9">
                <select name="lugar" id="create_lugar" class="form-control{{ $errors->has('lugar') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione un lugar</option>
                    @foreach($lugares as $lugar)
                        <option value="{{$lugar->id}}">{{$lugar->nombre}}</option>
                    @endforeach
                </select>
                @if ($errors->has('lugar'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('lugar') }}</strong>
                        </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_calendario" class="col-sm-3 form-control-label">Calendario</label>
            <div class="col-sm-9">
                <select name="calendario" id="create_calendario" class="form-control{{ $errors->has('calendario') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione un calendario</option>
                </select>
                @if ($errors->has('calendario'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('calendario') }}</strong>
                        </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_EquipoLocal" class="form-control-label col-sm-3">Equipo local</label>
            <div class="col-sm-4">
                <select name="equipo_local" id="create_EquipoLocal" class="form-control{{ $errors->has('equipo_local') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione un equipo local</option>
                </select>
                @if ($errors->has('equipo_local'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('equipo_local') }}</strong>
                        </span>
                @endif
            </div>
            <label for="create_resultadoEquipoLocal" class="form-control-label col-sm-2">Resultado</label>
            <div class="col-sm-3">
                <input id="resultado_local" type="number" name="resultado_local" class="form-control{{ $errors->has('resultado_local') ? ' is-invalid' : '' }}" value="{{old('resultado_local')}}" placeholder="Equipo Local">
                @if ($errors->has('resultado_local'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('resultado_local') }}</strong>
                </span>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="create_EquipoVisitante" class="col-sm-3 form-control-label">Equipo Visitante</label>
            <div class="col-sm-4">
                <select name="equipo_visitante" id="create_EquipoVisitante" class="form-control{{ $errors->has('equipo_visitante') ? ' is-invalid' : '' }}">
                    <option value="0" >Seleccione un equipo visitante</option>
                </select>
                @if ($errors->has('equipo_visitante'))
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('equipo_visitante') }}</strong>
                        </span>
                @endif
            </div>
            <label for="create_resultadoEquipoVisitante" class="form-control-label col-sm-2">Resultado</label>
            <div class="col-sm-3">
                <input id="resultado_visitante" type="number" name="resultado_visitante" class="form-control{{ $errors->has('resultado_visitante') ? ' is-invalid' : '' }}" value="{{old('resultado_visitante')}}" placeholder="Equipo Visitante">
                @if ($errors->has('resultado_visitante'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('resultado_visitante') }}</strong>
                </span>
                @endif
            </div>
        </div>


        <div class="form-group row">
            <div class="col-sm-12 offset-sm-5">
                <button type="button"  onclick="window.location='{{route('enfrentamientos.index')}}'" class="btn btn-secondary">Cancel</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </div>

    </form>

</div>
@endsection

@section('scripts')
    <script type="text/javascript">
        $(document).ready(function(){
            var modelo_torneo = $('#create_torneo');
            modelo_torneo.change(function(){
                modelo_torneo.each(function () {
                    var torneo = modelo_torneo.val();

                    var modelo_equipo_local = $('#create_EquipoLocal');
                        modelo_equipo_local.empty();
                        modelo_equipo_local.append("<option value='0' >Seleccione un equipo local</option>");

                    var modelo_equipo_visitante = $('#create_EquipoVisitante');
                        modelo_equipo_visitante.empty();
                        modelo_equipo_visitante.append("<option value='0' >Seleccione un equipo visitante</option>");

                    var modelo_calendario = $('#create_calendario');
                        modelo_calendario.empty();
                        modelo_calendario.append("<option value='0' >Seleccione un calendario</option>");

                    // Equipos vinculadas a un determinado torneo
                    $.ajax({
                        url: "/enfrentamientos/torneo/"+torneo,
                        type: 'GET'
                    }).done(function (data) {
                        $.each(data, function(key, item) {
                                modelo_equipo_local.append("<option value='" + item.equipo_id + "'>" + item.nombre + "</option>");
                            modelo_equipo_visitante.append("<option value='" + item.equipo_id + "'>" + item.nombre + "</option>");
                        });
                    }).fail( function() {
                        console.log('Error');
                    });

                    // Calendario vinculado a un determinado torneo
                    $.ajax({
                        url: "/enfrentamientos/calendario/"+torneo,
                        type: 'GET'
                    }).done(function (data) {
                        $.each(data, function(key, item) {
                            modelo_calendario.append("<option value='" + item.id + "'>" + item.fecha +" Jornada: "+ item.jornada +" "+item.nombre + "</option>");
                        });
                    }).fail( function() {
                        console.log('Error');
                    });
                });
            });
            
        });
    </script>
@endsection 