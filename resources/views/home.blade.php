@extends('layouts.admin')
@section('title', 'Inicio')
@section('content')
    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts no-padding-bottom">
        <div class="container-fluid">
            <div class="row bg-white has-shadow">
                <p>
                    Deportes Cotecnova vs. 0.1
                    <br>
                    versi&oacute;n de desarrollo
                </p>
            </div>
        </div>
    </section>
    
    
    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
            <div class="container-fluid">
                <div class="bg-white has-shadow">
                    <table id="example" class="table table-bordered table-striped table-condensed" style="text-align: center;">
                        <thead >
                            
                            <tr>
                                <th colspan="10">Estadísticas arbitrales</th>
                            </tr>
                            
                            <tr>
                                <th>Foto</th>
                                <th>Arbitro</th>
                                <th>Partidos</th>
                                <th>Faltas P.P.</th>
                                <th>Penaltus P.P.</th>
                                <th>Amarillas P.P.</th>
                                <th>Rojas P.P.</th>
                                <th>Ganados en casa %</th>
                                <th>Perdidos en casa %</th>
                                <th>Empatados %</th>
                            </tr>
                        </thead>
    
                        <tbody >
                            @foreach($enfrentamientos as $enfrentamiento)
                                <tr>
                                    <td> <img src="{{asset($enfrentamiento->arbitro->datos_basicos->foto)}}"  class="img-fluid rounded-circle" width="50vh"> </td>
                                    <td>{{ $enfrentamiento->arbitro->datos_basicos->primer_nombre }} {{ $enfrentamiento->arbitro->datos_basicos->primer_apellido }}</td>
                                    <td>{{ $numero_partidos->numero }}</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
@endsection
