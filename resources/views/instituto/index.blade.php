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
                                    <div class="btn-group" role="group">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('institutos.show', $instituto->id)}}'"><i class="fa fa-eye"></i></button>
                                            <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('institutos.edit', $instituto->id)}}'"><i class='fa fa-edit'></i></button>
                                            <button onclick="return funtion_swal()" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>


                                            <form action="{{route('institutos.destroy', $instituto->id)}}" method="POST">
                                                {{ method_field('DELETE') }}
                                                @csrf
                                                <button type="submit" id="delete_instituto" style="display: none;"></button>
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
        
        function funtion_swal() {
            swal({
                    title: "Eliminar Institucion",
                    text: "Se eliminara informacion importante con respecto a esta",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Eliminar",
                    cancelButtonText: "Cancelar",
                    closeOnConfirm: false,
                    closeOnCancel: false },

                function(isConfirm){
                    if (isConfirm) {
                        swal("¡Institucion Eliminada!",
                            "...",
                            "success");
                        setTimeout(function(){
                            $('.delete_instituto').click();
                        }, 500);
                    } else {
                        // swal("¡Gallina!",
                        //     "Tu te lo pierdes...",
                        //     "error");
                    }
                });

        }

        // $('#delete').on('click', function () {
        //     swal(" ","Institucion guardada con exito", "success");
        // });
    </script>
@endsection
