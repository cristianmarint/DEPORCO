@extends('layouts.admin')
@section('title','Listado De Temporadas')
@section('content')
@if(Session::has('create'))
    <script>
        setTimeout(function(){
                function_swal_confirm('{{Session::get('create')}}', 'creada')
        }, 500);
    </script>
@elseif(Session::has('update'))
    <script>
        setTimeout(function(){
            function_swal_confirm('{{Session::get('update')}}', 'editada')
        }, 500);
    </script>
@endif

<div class="row col-sm-8 col-sm-offset-2 align-left ml-3 mt-3">
    <button onclick="window.location='{{route('temporadas.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nueva</button>
</div>
<div class="card-body table-responsive">
    <table id="temporadas" class="table table-striped table-hover card-text" style="text-align: center;">
        <thead >
            <tr>
                <th>Descripción</th>
                <th>Fecha de inicio</th>
                <th>Fecha de fin</th>
                <th>Acciones</th>
            </tr>
        </thead>

        <tbody >
        
            @foreach($temporadas as $temporada)
                <tr>
                    <td>{{ $temporada->descripcion }}</td>
                    <td>{{ $temporada->fecha_inicio }}</td>
                    <td>{{ $temporada->fecha_fin }}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('temporadas.show', $temporada->id)}}'"><i class="fa fa-eye"></i></button>
                                <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('temporadas.edit', $temporada->id)}}'"><i class='fa fa-edit'></i></button>


                                <button onclick="id_clickeado({{ $temporada->id }},'{{ $temporada->descripcion }}');return function_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
                                
                                <form action="{{route('temporadas.destroy', $temporada->id)}}" method="POST">
                                    {{ method_field('DELETE') }}
                                    @csrf
                                    <button type="submit" id="delete{{ $temporada->id }}" style="display: none;"></button>
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
            $('#temporadas').DataTable( {
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
        function function_swal() {
            
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
                        swal("Temporada Eliminada!","procesando cambios","success");

                        setTimeout(function(){
                            var idfinal="#delete"+idclick;//se le agrega el id que fue clickeado
                            $(idfinal).click();
                        }, 500);
                    } else {
                        swal("Cancelado", "La temporada NO ha sido eliminada", "error");
                    }
                });
        }
        function function_swal_confirm(text, type) {
            swal("Informacion almacenada", "La temporada de "+text+" han sido "+type+" correctamente", "success");
        }
    </script>
@endsection