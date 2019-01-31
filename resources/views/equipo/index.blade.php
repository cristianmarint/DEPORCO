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
                                            <form action="" method="POST">
                                                {{ method_field('DELETE') }}
                                                @csrf
                                                <button onclick="return confirm('Eliminar registro?')" type="submit" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
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
    </script>
@endsection
