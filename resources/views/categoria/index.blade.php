@extends('layouts.admin')
@section('title','Categorias')
@section('content')

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Categorias</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

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

                <div class="row col-sm-8 col-sm-offset-2">
                    <button onclick="window.location='{{route('categorias.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nueva</button>
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
                    <thead >
                        <tr>
                            <th>Descripción</th>
                        </tr>
                    </thead>

                    <tbody >
                    
                        @foreach($categorias as $categoria)
                            <tr>
                                <td>{{ $categoria->descripcion }}</td>
                                <td>
                                    <div class="btn-group" role="group">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('categorias.show', $categoria->id)}}'"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('categorias.edit', $categoria->id)}}'"><i class='fa fa-edit'></i></button>


                                            <button onclick="id_clickeado({{ $categoria->id }},'{{ $categoria->descripcion }}');return function_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
                                            
                                            <form action="{{route('categorias.destroy', $categoria->id)}}" method="POST">
                                                {{ method_field('DELETE') }}
                                                @csrf
                                                <button type="submit" id="delete{{ $categoria->id }}" style="display: none;"></button>
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
                        swal("Categoria Eliminada!","procesando cambios","success");

                        setTimeout(function(){
                            var idfinal="#delete"+idclick;//se le agrega el id que fue clickeado
                            $(idfinal).click();
                        }, 500);
                    } else {
                        swal("Cancelado", "La categoria NO ha sido eliminado", "error");
                    }
                });
        }
        function function_swal_confirm(text, type) {
            swal("Informacion almacenada", "La categoria de "+text+" han sido "+type+" correctamente", "success");
        }
    </script>
@endsection