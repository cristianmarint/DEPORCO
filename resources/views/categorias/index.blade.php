@extends('layouts.admin')
@section('title','- Categorias')
@section('content')
    <!-- Page Header-->
    <header class="page-header">
        <div class="container-fluid">
            <h2 class="no-margin-bottom">Categorias</h2>
        </div>
    </header>

    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active">Categorias {{Request::is('categorias_delete') ? 'eliminadas': ''}}</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="bg-white has-shadow">

                <div class="row col-sm-4 col-sm-offset-5 {{Request::is('categorias_delete') ? 'd-none': ''}}" >
                    <button onclick="window.location='{{route('categorias.create')}}'" type="button" class="btn btn-info"><span class="fa fa-plus"></span> Nueva</button>
                </div>
                <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
                    <thead >
                    <tr>
                        <th>Categoria</th>
                        <th class="{{Request::is('categorias_delete') ? 'd-none': ''}}">Acciones</th>
                    </tr>
                    </thead>
                    <tbody >
                    @foreach($categorias as $categoria)
                        <tr>
                            <td>{{$categoria->categoria}}</td>
                            <td class="{{Request::is('categorias_delete') ? 'd-none': ''}}">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-info btn-sm" onclick="window.location='{{route('categorias.show', $categoria->id_categoria)}}'"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-success btn-sm" onclick="window.location='{{route('categorias.edit', $categoria->id_categoria)}}'"><i class='fa fa-edit'></i></button>
                                    <form action="{{route('categorias.destroy', $categoria->id_categoria)}}" method="POST">
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


