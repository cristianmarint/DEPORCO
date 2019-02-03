@extends('layouts.admin')
@section('title','Instituciones')
@section('content')
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/home')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Instituciones</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

                <div class="row col-sm-8 col-sm-offset-2">
                    <button onclick="window.location='{{route('institutos.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
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

                                        <button onclick="id_clickeado({{$instituto->id}},'{{$instituto->nombre}}');return funtion_swal();" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>

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

        function funtion_swal() {
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

    </script>
@endsection
