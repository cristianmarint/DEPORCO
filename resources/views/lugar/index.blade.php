@extends('layouts.admin')
@section('title','Listado De Lugares')
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
    <button onclick="window.location='{{route('lugares.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
</div>
<div class="card-body table-responsive">
    <table id="lugares" class="table table-striped table-hover card-text" style="text-align: center;">
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
                                <button onclick="id_clickeado({{ $lugar->id }},'{{ $lugar->nombre }}');return function_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
                                
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
@endsection
@section('scripts')
    <script type="text/javascript">
        $(function () {
            $('#lugares').DataTable( {
                "language": {
                    "url": "{{url('assets/dataTables/Spanish.json')}}"
                }
            } );
        });
        var idclick;var nombreclick;
        function id_clickeado(id,nombre){
                // console.log("id clickeada => "+id);
            idclick=id;//captura el id a la cual se le dio click
            nombreclick=nombre;//captura el nombre a la cual se le dio click
        }
        function function_swal() {
            
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
        function function_swal_confirm(text, type) {
            swal("Informacion almacenada", "El lugar "+text+" ha sido "+type+" correctamente", "success");
        }
    </script>
@endsection