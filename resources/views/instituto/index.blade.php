@extends('layouts.admin')
@section('title','Listado De Instituciones')
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
    <button onclick="window.location='{{route('institutos.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
</div>
<div class="card-body table-responsive">
    <table id="instituciones" class="table table-striped table-hover card-text" style="text-align: center;">
        <thead >
            <tr>
                <th>Codigo dane</th>
                <th>Nit</th>
                <th>Nombre</th>
                <th>Logo</th>
                <th>Acciones</th>
            </tr>
        </thead>

        <tbody >
            @foreach($institutos as $instituto)
                <tr>
                    <td>{{$instituto->codigo_dane}}</td>
                    <td>{{$instituto->nit}}</td>
                    <td>{{$instituto->nombre}}</td>
                    <td> <img src="{{asset($instituto->logo)}}"  class="img-fluid rounded-circle" width="50vh"></td>
                    <td>
                        <div class="btn-group" role="group" id="action_button">
                            <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('institutos.show', $instituto->id)}}'"><i class="fa fa-eye"></i></button>
                            <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('institutos.edit', $instituto->id)}}'"><i class='fa fa-edit'></i></button>

                            <button onclick="id_clickeado({{$instituto->id}},'{{$instituto->nombre}}');return function_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>

                            <form action="{{route('institutos.destroy', $instituto->id)}}" method="POST">
                                {{ method_field('DELETE') }}
                                @csrf                       {{-- se le agrega a cada id el de eloquen  --}}
                                <button type="submit" id="delete_instituto{{ $instituto->id }}" style="display: none;"></button>
                            </form>
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
            $('#instituciones').DataTable( {
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
                title: "¿Seguro que desea eliminar la Institucion "+nombreclick+"? ",
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
                    swal("Institucion Eliminada!","procesando cambios","success");

                    setTimeout(function(){
                        var idfinal="#delete_instituto"+idclick;//se le agrega el id que fue clickeado
                        $(idfinal).click();
                    }, 500);
                } else {
                    swal("Cancelado", "La Institucion NO ha sido eliminada", "error");
                }
            });
        }

        function function_swal_confirm(text, type) {
            swal("Informacion almacenada", "La Institucion "+text+" ha sido "+type+" correctamente", "success");
        }

    </script>
@endsection
