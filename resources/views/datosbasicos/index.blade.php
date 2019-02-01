@extends('layouts.admin')
@section('title','Datos Basicos')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Datos Basicos</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                <div class="row col-sm-8 col-sm-offset-2">
                    {{-- <button onclick="window.location='{{route('lugares.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button> --}}
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
                    <thead >
                        <tr>
                            <th>Cedula</th>
                            <th>Nombre completo</th>
                            <th>Telefono</th>
                            <th>Municipio</th>
                            <th>Direccion</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <tbody >
                    
                        @foreach($datosbasicos as $datos)
                            <tr>
                                <td>{{ $datos->cedula }}</td>
                                <td>{{ $datos->primer_nombre }} {{ $datos->segundo_nombre }} {{ $datos->primer_apellido }} {{ $datos->segundo_apellido }}</td>
                                <td>{{ $datos->telefono->tipo}} {{ $datos->telefono->numero}}</td>
                                <td>{{ $datos->municipio->nombre}}</td>
                                <td>Calle {{ $datos->direccion->calle}} Carrera {{ $datos->direccion->carrera}} # {{ $datos->direccion->numero}}</td>
                                <td>
                                    <div class="btn-group" role="group">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('datosbasicos.show', $datos->id)}}'"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('lugares.edit', $datos->id)}}'"><i class='fa fa-edit'></i></button>


                                            <button onclick="id_clickeado({{ $datos->id }},'{{ $datos->primer_nombre }} {{ $datos->segundo_nombre }} {{ $datos->primer_apellido }} {{ $datos->segundo_apellido }}');return funtion_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
                                            
                                            <form action="{{route('datosbasicos.destroy', $datos->id)}}" method="POST">
                                                {{ method_field('DELETE') }}
                                                @csrf
                                                <button type="submit" id="delete_datos_basicos{{ $datos->id }}" style="display: none;"></button>
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
        function id_clickeado(id,nombre){
                console.log("id clickeada => "+id);
            idclick=id;//captura el id a la cual se le dio click
            nombreclick=nombre;//captura el nombre a la cual se le dio click
        }
        function funtion_swal() {
            
            swal({
                    title: "¿Seguro que desea eliminar a  "+nombreclick+"? ",
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
                        swal("Datos Eliminados!","procesando cambios","success");

                        setTimeout(function(){
                            var idfinal="#delete_datos_basicos"+idclick;//se le agrega el id que fue clickeado
                            $(idfinal).click();
                        }, 500);
                    } else {
                        swal("Cancelado", "Los datos NO ha sido eliminado", "error");
                    }
                });
        }
    </script>
@endsection