@extends('layouts.admin')
@section('title','Enfrentamientos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('/enfrentamientos')}}">Enfrentamientos</a></li>
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
                    <!-- Form Elements -->
                    <div class="card">
                        <div class="card-body">
                            <form action="{{route('enfrentamientos.update', $enfrentamiento->id)}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                                {{ method_field('PUT') }}
                                @csrf
                                <div class="form-group row">
                                        <label for="edit_torneo" class="col-sm-3 form-control-label">Torneo</label>
                                        <div class="col-sm-9">
                                            <select name="torneo" id="edit_torneo" class="form-control{{ $errors->has('torneo') ? ' is-invalid' : '' }}">
                                                <option value="0" disabled="disabled" >Seleccione un torneo</option>
                                                @foreach($torneos as $torneo)
                                                    <option value="{{$torneo->id}}" {{ $torneo->id == $torneoInscritos->torneo_id ? 'selected':'' }}>{{$torneo->nombre}}</option>
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
                                    <label for="edit_lugar" class="col-sm-3 form-control-label">Lugares</label>
                                    <div class="col-sm-9">
                                        <select name="lugar" id="edit_lugar" class="form-control{{ $errors->has('lugar') ? ' is-invalid' : '' }}">
                                            <option value="0" >Seleccione un lugar</option>
                                            @foreach($lugares as $lugar)
                                                <option value="{{$lugar->id}}"  {{ $lugar->id  == $enfrentamiento->lugar_id   ? 'selected=selected':'' }}>{{$lugar->nombre}}</option>
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
                                        <label for="edit_calendario" class="col-sm-3 form-control-label">Calendario</label>
                                        <div class="col-sm-9">
                                            <select name="calendario" id="edit_calendario" class="form-control{{ $errors->has('calendario') ? ' is-invalid' : '' }}">
                                                <option value="0"  disabled="disabled" >Seleccione un calendario</option>
                                                @foreach($calendarios as $calendario)
                                                    <option value="{{$calendario->id}}"  {{ $calendario->id  == $enfrentamiento->calendario_id   ? 'selected=selected':'' }}>{{$calendario->fecha." Jornada: ".$calendario->jornada." ".$calendario->nombre }}</option>
                                                @endforeach
                                            </select>
                                            @if ($errors->has('torneo'))
                                                <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $errors->first('calendario') }}</strong>
                                                    </span>
                                            @endif
                                        </div>
                                </div>
       
                                <div class="form-group row">
                                    <label for="edit_EquipoLocal" class="form-control-label col-sm-3">Equipo local</label>
                                    <div class="col-sm-4">
                                        <select name="equipo_local" id="edit_EquipoLocal" class="form-control{{ $errors->has('equipo_local') ? ' is-invalid' : '' }}">
                                            <option value="0" disabled="disabled" >Seleccione un equipo local</option>
                                            @foreach($InscripcionEquipos as $InscripcionEquipo)
                                                <option value="{{$InscripcionEquipo->id}}"  {{ $InscripcionEquipo->id  == $enfrentamiento->inscripcion_equipo_local_id   ? 'selected=true':'' }}>{{$InscripcionEquipo->nombre }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('equipo_local'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('equipo_local') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                    <label for="create_resultadoEquipoLocal" class="form-control-label col-sm-2">Resultado</label>
                                    <div class="col-sm-3">
                                        <input id="resultado_local" type="resultado_local" name="resultado_local" class="form-control{{ $errors->has('resultado_local') ? ' is-invalid' : '' }} text-center "  placeholder="{{$resultados->resultado_local}}">
                                        @if ($errors->has('resultado_local'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('resultado_local') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
    
                                <div class="form-group row">
                                    <label for="edit_EquipoVisitante" class="col-sm-3 form-control-label">Equipo Visitante</label>
                                    <div class="col-sm-4">
                                        <select name="equipo_visitante" id="edit_EquipoVisitante" class="form-control{{ $errors->has('equipo_visitante') ? ' is-invalid' : '' }}">
                                            <option value="0" disabled="disabled" >Seleccione un equipo visitante</option>
                                            @foreach($InscripcionEquipos as $InscripcionEquipo)
                                                <option value="{{$InscripcionEquipo->id}}"  {{ $InscripcionEquipo->id  == $enfrentamiento->inscripcion_equipo_visitante_id   ? 'selected=true':'' }}>{{$InscripcionEquipo->nombre }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('equipo_visitante'))
                                            <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('equipo_visitante') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                    <label for="edit_resultadoEquipoVisitante" class="form-control-label col-sm-2 ">Resultado</label>
                                    <div class="col-sm-3">
                                        <input id="resultado_visitante" type="resultado_visitante" name="resultado_visitante" class="form-control{{ $errors->has('resultado_visitante') ? ' is-invalid' : '' }}  text-center"  placeholder="{{$resultados->resultado_visitante}}">
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
                    </div>
                </div>
            </div>
        </section>
@endsection

@section('scripts')
    <script type="text/javascript">
        $(document).ready(function(){
            var modelo_torneo = $('#edit_torneo');
            modelo_torneo.change(function(){
                modelo_torneo.each(function () {
                    var torneo = modelo_torneo.val();

                    var modelo_equipo_local = $('#edit_EquipoLocal');
                        modelo_equipo_local.empty();
                        modelo_equipo_local.append("<option value='0' selected='true' disabled='disabled' >Seleccione un equipo local</option>");

                    var modelo_equipo_visitante = $('#edit_EquipoVisitante');
                        modelo_equipo_visitante.empty();
                        modelo_equipo_visitante.append("<option value='0' selected='true' disabled='disabled'>Seleccione un equipo visitante</option>");

                    var modelo_calendario = $('#edit_calendario');

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
                        modelo_calendario.empty();
                        modelo_calendario.append("<option value='0' selected='true' disabled='disabled' >Seleccione un calendario</option>");
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

