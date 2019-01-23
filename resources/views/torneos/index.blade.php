@extends('layouts.admin')
@section('title','- Torneos')
@section('content')
    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Torneos</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Torneos {{Request::is('torneos_delete') ? 'eliminados': ''}}</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

                <div class="row col-sm-4 col-sm-offset-5 {{Request::is('torneos_delete') ? 'd-none': ''}}" >
                    <button onclick="window.location='{{route('torneos.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nuevo</button>
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
                    <thead >
                    <tr>
                        <th>Nombre Torneo</th>
                        <th>Categoria</th>
                        <th>Temporada</th>
                        <th class="{{Request::is('torneos_delete') ? 'd-none': ''}}">Acciones</th>
                    </tr>
                    </thead>
                    <tbody >
                    @foreach($torneos as $torneo)
                        <tr>
                            <td>{{$torneo->nombre_torneo}}</td>
                            <td>{{$torneo->categoria}}</td>
                            <td>{{$torneo->numero_temporada}}</td>
                            <td class="{{Request::is('torneos_delete') ? 'd-none': ''}}">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('torneos.show', $torneo->id_torneo)}}'"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('torneos.edit', $torneo->id_torneo)}}'"><i class='fa fa-edit'></i></button>
                                    <form action="{{route('torneos.destroy', $torneo->id_torneo)}}" method="POST">
                                        {{ method_field('DELETE') }}
                                        @csrf
                                        <button onclick="return confirm('Eliminar registro?')" type="submit" class="btn btn-danger btn-sm"><i class='fa fa-trash'></i></button>
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
    </script>
@endsection


