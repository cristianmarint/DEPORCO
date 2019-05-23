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
        <div id="equipo">
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
        </div>
            
        <div id="jugadores" class="row d-none">
            <table id="PlayersTable" class="table table-striped table-hover card-text" width="100%">
                <tbody>
                    <tr>
                        <th width="10%">N&uacute;mero de Documento</th>
                        <th width="10%">Nombre</th>
                        <th width="10%">Tipo</th>
                        <th width="10%">Programa</th>
                        <th width="10%">Capitan</th>
                        <th width="10%">Acudiente</th>
                        <th width="10%">Telefono</th>


                        {{--<th width="10%">Email</th>--}}
                        {{--<th width="10%">Semestre</th>--}}
                        {{--<th width="10%">Cod Programa</th>--}}
                        {{--<th width="10%">Programa</th>--}}
                        <th width="10%" align="center">Eliminar</th>

                        <!--<th width="10%">Ejecutada</th> -->

                    </tr>

                </tbody>
            </table>
        </div>
    
        <div class="form-group row">
                <div class="col-sm-12 offset-sm-4">
                    <button type="button" id="add_player" onclick="add_form_player()" class="btn btn-info d-none">Agregar</button>
                    <button type="button" id="changes_to_team" onclick="change_to_team()" class="btn btn-success d-none">Editar equipo</button>
                    <button type="button" id="changes_to_players" onclick="change_to_players()" class="btn btn-success">Jugadores</button>
                    <button type="button"  onclick="window.location='{{route('equipos.index')}}'" class="btn btn-secondary">Cancel</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </div>

    </form>
    
</div>
@endsection
@section('scripts')
    <script type="text/javascript">
        $equipo = $('#equipo');
        $jugadores = $('#jugadores');
        $changes_to_players = $('#changes_to_players');
        $changes_to_team = $('#changes_to_team');
        $add_player = $('#add_player');

        function change_to_team() {
            $equipo.show();
            $jugadores.hide();
            $changes_to_players.show();
            $changes_to_team.addClass('d-none');
            $add_player.addClass('d-none');
            $jugadores.addClass('d-none');

        }
        function change_to_players() {
            $equipo.hide();
            $jugadores.show();
            $jugadores.removeClass('d-none');
            $changes_to_players.hide();
            $changes_to_team.removeClass('d-none');
            $add_player.removeClass('d-none');
        }

        var position = 1;
        function add_form_player() {
            // console.log("click");
            NewRow = document.getElementById('PlayersTable').insertRow(-1);
            NewRow.id = position;

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td width='10%'><input type='text' size='20' class='form-control SearchDoc doc" + position + "'' name='numberdoc[" + position + "]' id='numberdoc[" + position + "]' data-pos=[" + position + "] autocomplete='off' placeholder='Cedula'></td>";

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td width='10%'><input type='text' size='20' class='form-control playerName" + position + "' name='playerName[" + position + "]' id='playerName[" + position + "]' autocomplete='off' style='text-align:center'></td>";

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td width='10%'><select class='form-control typePlayer" + position + "'' name='typePlayer[" + position + "]' id='typePlayer[" + position + "]' style='width:100%;'><option value=''>Choose</option></select></td>";

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td width='10%'><select class='form-control programPlayer" + position + "'' name='programPlayer[" + position + "]' id='programPlayer[" + position + "]' style='width:100%;'><option value=''>Choose</option></select></td>";

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td width='10%'><select class='form-control captain" + position + "'' name='captain[" + position + "]' id='captain[" + position + "]' style='width:100%;'><option value=''>Choose</option></select></td>";

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td width='10%'><input type='text' size='20' class='form-control est" + position + "' name='estudiante[" + position + "]' id='estudiante[" + position + "]' autocomplete='off' readonly style='text-align:center'></td>";

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td width='10%'><input type='text' size='20' class='form-control est" + position + "' name='estudiante[" + position + "]' id='estudiante[" + position + "]' autocomplete='off' readonly style='text-align:center'></td>";

            NewCell = NewRow.insertCell(-1);

            NewCell.innerHTML = "<td align='center'><input type='button' class='btn btn-danger' value='Eliminar' onclick='eliminarUsuarioMod(this)'></td>";

            position++;

        }

        function eliminarUsuarioMod(obj) {
            var oTr = obj;
            while(oTr.nodeName.toLowerCase() != 'tr') {
                oTr=oTr.parentNode;
            }
            var root = oTr.parentNode;
            root.removeChild(oTr);
        }

    </script>
@endsection


