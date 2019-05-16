@extends('layouts.admin')
@section('title','Listado De Equipos')
@section('content')
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
<div class="row col-sm-8 col-sm-offset-2 align-left ml-3 mt-3">
    <button onclick="window.location='{{route('equipos.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
</div>
<div class="card-body table-responsive">
    <table id="equipos" class="table table-striped table-hover card-text" style="text-align: left;">
        <thead >
            <tr>
                <th>Institución</th>
                <th>Nombre</th>
                <th>Logo</th>
                <th>Color</th>
                <th>Acciones</th>
            </tr>
        </thead>

        <tbody >
        
            @foreach($equipos as $equipo)
                <tr>
                    <td>{{$equipo->instituto->nombre}}</td>
                    <td>{{$equipo->nombre}}</td>
                    <td> <img src="{{asset($equipo->logo)}}"  class="img-fluid rounded-circle" width="50vh"></td>
                    <td>{{$equipo->colores->color}}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('equipos.show', $equipo->id)}}'"><i class="fa fa-eye"></i></button>
                                <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('equipos.edit', $equipo->id)}}'"><i class='fa fa-edit'></i></button>

                                <button onclick="id_clickeado({{ $equipo->id }},'{{ $equipo->nombre }}');return function_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
                                
                                <form action="{{route('equipos.destroy', $equipo->id)}}" method="POST">
                                    {{ method_field('DELETE') }}
                                    @csrf
                                    <button type="submit" id="delete_equipo{{ $equipo->id }}" style="display: none;"></button>
                                </form>
                            </div>
                        </div>
                    </td>
                </tr>
            @endforeach
        
        </tbody>
    </table>
</div>
@endsection
@section('scripts')
    <script type="text/javascript">
        $(function () {
            $('#equipos').DataTable( {
                "language": {
                    "url": "{{url('assets/dataTables/Spanish.json')}}"
                }
            } );
        });
        var idclick;var nombreclick;
        function id_clickeado(id,nombre){
                // console.log("id clickeada => "+id);
            idclick=id;//captura el id a la cual se le dio click
            nombreclick=nombre;//captura el id a la cual se le dio click
        }
        function function_swal() {
            
            swal({
                    title: "¿Seguro que desea eliminar el equipo "+nombreclick+"? ",
                    text: "Se eliminara toda la información",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Eliminar",
                    cancelButtonText: "Cancelar",
                    closeOnConfirm: false,
                    closeOnCancel: false 
                 },
                function(isConfirm){
                    if (isConfirm) {
                        swal("Lugar Eliminado!","procesando cambios","success");

                        setTimeout(function(){
                            var idfinal="#delete_equipo"+idclick; 
                            $(idfinal).click();
                        }, 500);
                    } else {
                        swal("Cancelado", "El equipo NO ha sido eliminado", "error");
                    }
                });
        }

        function function_swal_confirm(text, type) {
            swal("Informacion almacenada", "El equipo "+text+" ha sido "+type+" correctamente", "success");
        }
    </script>
@endsection