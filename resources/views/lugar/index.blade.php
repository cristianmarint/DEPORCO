@extends('layouts.admin')
@section('title','Lugares')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Lugares</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                <div class="row col-sm-8 col-sm-offset-2">
                    <button onclick="window.location='{{route('lugares.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
                    <thead >
                        <tr>
                            <th>Nombre</th>
                            <th>Municipio</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <tbody >
                    
                        @foreach($lugares as $lugar)
                            <tr>
                                <td>{{ $lugar->nombre }}</td>
                                <td>{{$lugar->municipio->nombre}}</td>
                                <td>Calle {{$lugar->direccion->calle}} Carrera {{$lugar->direccion->carrera}} # {{$lugar->direccion->numero}}</td>
                                <td>{{$lugar->telefono->tipo}} {{$lugar->telefono->numero}}</td>
                                <td>
                                    <div class="btn-group" role="group">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('lugares.show', $lugar->id)}}'"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('lugares.edit', $lugar->id)}}'"><i class='fa fa-edit'></i></button>

                                                                          {{--  captura la informacion de cada row cuando se le da click al boton   --}}
                                            <button onclick="id_clickeado({{ $lugar->id }},'{{ $lugar->nombre }}');return funtion_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
                                            
                                            <form action="{{route('lugares.destroy', $lugar->id)}}" method="POST">
                                                {{ method_field('DELETE') }}
                                                @csrf                       {{-- se le agrega a cada id el de eloquen  --}}
                                                <button type="submit" id="delete_lugar{{ $lugar->id }}" style="display: none;"></button>
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
                    title: "¿Seguro que desea eliminar el lugar "+nombreclick+"? ",
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
                            var idfinal="#delete_lugar"+idclick;//se le agrega el id que fue clickeado
                            $(idfinal).click();
                        }, 500);
                    } else {
                        swal("Cancelado", "El lugar NO ha sido eliminado", "error");
                    }
                });
        }
    </script>
@endsection