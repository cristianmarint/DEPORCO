@extends('layouts.admin')
@section('title','Equipos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Equipos</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                <div class="row col-sm-8 col-sm-offset-2">
                    <button onclick="window.location='{{route('equipos.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
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

                                            <button onclick="id_clicked({{ $equipo->id }},'{{ $equipo->nombre }}');return funtion_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
                                            
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
        var idclick;var nombreclick;
        function id_clicked(id,nombre){
                console.log("id clickeada => "+id);
            idclick=id;//captura el id a la cual se le dio click
            nombreclick=nombre;//captura el id a la cual se le dio click
        }
        function funtion_swal() {
            
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
                        swal("Cancelado", "El lugar NO ha sido eliminado", "error");
                    }
                });
        }
    </script>
@endsection