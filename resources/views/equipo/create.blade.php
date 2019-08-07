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

        </div>
    
        <div class="form-group row">
                <div class="col-sm-12 offset-sm-4">
                    <button type="button" id="add_player" onclick="add_form_player()" class="btn btn-info d-none">Agregar</button>
                    <button type="button" id="changes_to_team" onclick="change_to_team()" class="btn btn-success d-none">Editar equipo</button>
                    <button type="button" id="changes_to_players" onclick="change_to_players()" class="btn btn-success">Jugadores</button>
                    <button type="button"  onclick="window.location='{{route('equipos.index')}}'" class="btn btn-secondary">Cancel</button>
                    <button type="button" id="save" class="btn btn-primary">Guardar</button>
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
        $button_save = $('#save');

        function change_to_team() {
            $equipo.show();
            $jugadores.hide();
            $changes_to_players.show();
            $changes_to_team.addClass('d-none');
            $add_player.addClass('d-none');
            $jugadores.addClass('d-none');

        }
        function change_to_players() {
            $button_save.addClass('disable');
            $equipo.hide();
            $jugadores.show();
            $jugadores.removeClass('d-none');
            $changes_to_players.hide();
            $changes_to_team.removeClass('d-none');
            $add_player.removeClass('d-none');
        }

        var position = 1;
        function add_form_player() {
            $("#jugadores").append(
                "<fieldset style='margin-bottom: 2%;'>"+
                "<div class='form-row'>" +
                    "<div class='form-group row col-sm-6'>" +
                        "<label for='document["+position+"]' class='form-control-label col-sm-3' class='document'>Documento</label>" +
                        "<div class='col-sm-9'>" +
                            "<input id='document["+position+"]' type='text' name='document["+position+"]' class='form-control BuscarDoc' value='' placeholder='Documento' onBlur='buscar("+position+");'>" +
                        "</div>" +
                    "</div>" +

                    "<div class='form-group row col-sm-6'>" +
                        "<label for='namePlayer["+position+"]' class='form-control-label col-sm-3'>Nombre</label>" +
                        "<div class='col-sm-9'>" +
                            "<input id='namePlayer["+position+"]' type='text' name='namePlayer["+position+"]' class='form-control' value='' placeholder='Nombre' readonly>" +
                        "</div>" +
                    "</div>" +
                "</div>" +


                "<div class='form-row'>" +
                    "<div class='form-group row col-sm-6'>" +
                        "<label for='typePlayer["+position+"]' class='form-control-label col-sm-3'>Tipo</label>" +
                        "<div class='col-sm-9'>" +
                            "<select id='typePlayer["+position+"]' name='typePlayer["+position+"]' class='form-control'>" +
                                "<option value='0'>Seleccione el tipo</option>" +
                                     "@foreach($tipo_jugador as $tipoJugador)"+
                                        "<option value='{{$tipoJugador->id}}'>{{$tipoJugador->cargo}}</option>" +
                                     "@endforeach" +
                            "</select>"+
                        "</div>" +
                    "</div>" +

                    "<div class='form-group row col-sm-6'>" +
                        "<label for='programStudent["+position+"]' class='form-control-label col-sm-3' >Programa</label>" +
                        "<div class='col-sm-9'>" +
                            "<input id='programStudent["+position+"]' name='programStudent["+position+"]' class='form-control' disabled='' placeholder='Programa'>" +
                        "</div>" +
                    "</div>" +
                "</div>" +


                "<div class='form-row'>" +
                    "<div class='form-group row col-sm-6'>" +
                        "<label for='attendantName["+position+"]' class='form-control-label col-sm-3'>Nombre Acudiente</label>" +
                        "<div class='col-sm-9'>" +
                            "<input id='attendantName["+position+"]' type='text' name='attendantName["+position+"]' class='form-control' value='' placeholder='Nombre Completo'>" +
                        "</div>" +
                    "</div>" +

                    "<div class='form-group row col-sm-6'>" +
                        "<label for='attendantNumber["+position+"]' class='form-control-label col-sm-3'>Numero Acudiente</label>" +
                        "<div class='col-sm-9'>" +
                            "<input id='attendantNumber["+position+"]' type='number' name='attendantNumber["+position+"]' class='form-control' value='' placeholder='Telefono'>" +
                        "</div>" +
                    "</div>" +
                "</div>" +


                "<div class='form-row'>" +
                   "<div class='form-group row col-sm-6'>" +
                        "<label class='col-md-3 form-control-label'>¿Es capitan?</label>"+
                       " <div class='col-md-9'>"+
                            "<div class='custom-control custom-radio custom-control-inline'>"+
                                "<input id='radioConfirm["+position+"]' type='radio' name='customRadioInline1' class='custom-control-input' value='1'>"+
                                "<label for='radioConfirm["+position+"]' class='custom-control-label'>Si</label>"+
                            "</div>"+
                        "</div>"+
                  "</div>" +

                   "<div class='form-group row col-sm-6'>" +
                     "<button type='button' id='remove' onclick='eliminarUsuarioMod(this)' class='btn btn-danger offset-sm-4'>Eliminar</button>"+
                    "</div>" +
                "</div>" +

                "</fieldset>"
            );
            position++;
        }

        // $("body").on("click", "#remove", function (e) {
        //     $(this).parent("div").remove();
        // });

        function eliminarUsuarioMod(obj) {
            var oTr = obj;
            while(oTr.nodeName.toLowerCase() != 'fieldset') {
                oTr=oTr.parentNode;
            }
            var root = oTr.parentNode;
            root.removeChild(oTr);
        }

        // $(document).on("keypress",".BuscarDoc",function(event) {
        //     var keycode = (event.keyCode ? event.keyCode : event.which);
        //     if(keycode == '13'){
        //
        //     }
        // });

        function buscar(position) {
            console.log('buscando ' + position);

            var doc = $('#document\\['+position+'\\]').val();
            console.log(doc);


            $.ajax({
                url: "/equipos/jugadores/"+doc,
                type: 'GET'
            }).done(function (data) {
                $.each(data, function(key, item) {
                   console.log(item);
                    $('#namePlayer\\['+position+'\\]').val("Funciona");
                    // $('#namePlayer\\['+position+'\\]').val(item.primer_nombre);
                });
            }).fail( function() {
                console.log('Error');
                $('#namePlayer\\['+position+'\\]').val("Error de busqueda");
            });
        }
    </script>
@endsection
