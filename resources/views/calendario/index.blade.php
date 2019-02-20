@extends('layouts.admin')
@section('title','Calendarios')
@section('content')
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Calendarios</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

                @if(Session::has('create'))
                    <script>
                        setTimeout(function(){
                            function_swal_confirm('{{Session::get('create')}}', 'creado')
                        }, 500);
                    </script>
                @elseif(Session::has('update'))
                    <script>
                        setTimeout(function(){
                            function_swal_confirm('{{Session::get('update')}}', 'editado')
                        }, 500);
                    </script>
                @endif

                <div class="row col-sm-8 col-sm-offset-2">
                    <button onclick="window.location='{{route('calendarios.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
                    <thead >
                    <tr>
                        <th>Numero Jornada</th>
                        <th>Fecha</th>
                        <th>Torneo</th>
                        <th>Avance</th>
                        <th>Acciones</th>
                    </tr>
                    </thead>

                    <tbody >
                    @foreach($calendarios as $calendario)
                        <tr>
                            <td>{{$calendario->jornada}}</td>
                            <td>{{$calendario->fecha}}</td>
                            <td>{{$calendario->torneo->nombre}}</td>
                            <td>{{$calendario->fase->nombre}}</td>
                            <td>
                                <div class="btn-group" role="group" id="action_button">
                                    <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('calendarios.show', $calendario->id)}}'"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('calendarios.edit', $calendario->id)}}'"><i class='fa fa-edit'></i></button>

                                    <button onclick="id_clickeado({{$calendario->id}},'{{$calendario->numero_jornada}}');return function_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>

                                    <form action="{{route('calendarios.destroy', $calendario->id)}}" method="POST">
                                        {{ method_field('DELETE') }}
                                        @csrf                       {{-- se le agrega a cada id el de eloquen  --}}
                                        <button type="submit" id="delete_calendario{{ $calendario->id }}" style="display: none;"></button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script type="text/javascript">
        $(function () {
            $('#example').DataTable( {
                "language": {
                    "url": "{{url('assets/dataTables/Spanish.json')}}"
                }
            } );
        });

        function message(title, text, type) {
            swal({
                title: title,
                text: text,
                type: type,
                showCancelButton: false,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Cerrar",
                closeOnConfirm: true,
            });
        }

        var idclick;var nombreclick;
        function id_clickeado(id,nombre){
            // console.log("id clickeada => "+id);
            idclick=id;//captura el id a la cual se le dio click
            nombreclick=nombre;//captura el nombre a la cual se le dio click
        }

        function function_swal() {
            swal({
                    title: "¿Seguro que desea eliminar la jornada "+nombreclick+"? ",
                    text: "Se eliminara toda la información",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Eliminar",
                    cancelButtonText: "Cancelar",
                    closeOnConfirm: false,
                    closeOnCancel: false },

                function(isConfirm){
                    if (isConfirm) {
                        swal("Jornada Eliminada!","Actualizando el calendario","success");

                        setTimeout(function(){
                            var idfinal="#delete_calendario"+idclick;//se le agrega el id que fue clickeado
                            $(idfinal).click();
                        }, 500);
                    } else {
                        swal("Cancelado", "La jornada NO ha sido eliminada", "error");
                    }
                });
        }

        function function_swal_confirm(text, type) {
            swal("Informacion almacenada", "El calendario para la jornada "+text+" ha sido "+type+" correctamente", "success");
        }

    </script>
@endsection
