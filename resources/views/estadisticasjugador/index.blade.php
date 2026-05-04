@extends('layouts.admin')
@section('title','Estadísticas de Jugadores')
@section('content')

<div class="card mt-3 mx-3">
    <div class="card-header">
        <h4 class="mb-0"><span class="fa fa-chart-bar"></span> Estadísticas de jugadores</h4>
        <small class="text-muted">Totales acumulados de partidos jugados, anotaciones y faltas.</small>
    </div>

    <div class="card-body table-responsive">
        <table id="estadisticasJugadores" class="table table-striped table-hover" style="text-align: center;">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Jugador</th>
                    <th>Cédula</th>
                    <th>Partidos</th>
                    <th>Anotaciones</th>
                    <th>Faltas</th>
                    <th>Detalle</th>
                </tr>
            </thead>
            <tbody>
                @forelse($jugadores as $i => $jugador)
                    <tr>
                        <td>{{ $i + 1 }}</td>
                        <td>{{ trim($jugador->nombre) ?: '— sin nombre —' }}</td>
                        <td>{{ $jugador->cedula }}</td>
                        <td>{{ $jugador->partidos }}</td>
                        <td><strong>{{ $jugador->anotaciones }}</strong></td>
                        <td>{{ $jugador->faltas }}</td>
                        <td>
                            <button type="button"
                                    class="btn btn-sm btn-outline-info"
                                    data-jugador-id="{{ $jugador->id }}"
                                    onclick="verDetalleJugador({{ $jugador->id }})">
                                <span class="fa fa-eye"></span> Ver
                            </button>
                        </td>
                    </tr>
                @empty
                    <tr><td colspan="7" class="text-muted">Aún no hay estadísticas registradas.</td></tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>

<div id="detalleJugador" class="card mt-3 mx-3" style="display:none;">
    <div class="card-header">
        <h5 class="mb-0">Detalle: <span id="detalleNombre"></span></h5>
    </div>
    <div class="card-body">
        <div id="detalleResumen" class="mb-3"></div>
        <table class="table table-sm">
            <thead>
                <tr><th>Torneo</th><th>Partidos</th><th>Anotaciones</th><th>Faltas</th></tr>
            </thead>
            <tbody id="detalleTorneos"></tbody>
        </table>
    </div>
</div>

<script>
    function verDetalleJugador(id) {
        fetch('{{ url('/estadisticasjugador') }}/' + id, {
            headers: { 'Accept': 'application/json' },
            credentials: 'same-origin'
        })
        .then(function (r) { return r.json(); })
        .then(function (data) {
            if (!data || !data.jugador) { return; }
            document.getElementById('detalleJugador').style.display = 'block';
            document.getElementById('detalleNombre').textContent = data.jugador.nombre || '';
            var resumen = data.resumen || {};
            document.getElementById('detalleResumen').innerHTML =
                '<strong>Cédula:</strong> ' + (data.jugador.cedula || '-') +
                ' &nbsp;|&nbsp; <strong>Partidos:</strong> ' + (resumen.partidos || 0) +
                ' &nbsp;|&nbsp; <strong>Anotaciones:</strong> ' + (resumen.anotaciones || 0) +
                ' &nbsp;|&nbsp; <strong>Faltas:</strong> ' + (resumen.faltas || 0);
            var tbody = document.getElementById('detalleTorneos');
            tbody.innerHTML = '';
            (data.torneos || []).forEach(function (t) {
                var tr = document.createElement('tr');
                tr.innerHTML = '<td>' + t.torneo + '</td><td>' + t.partidos + '</td>'
                             + '<td>' + t.anotaciones + '</td><td>' + t.faltas + '</td>';
                tbody.appendChild(tr);
            });
            if (!(data.torneos || []).length) {
                tbody.innerHTML = '<tr><td colspan="4" class="text-muted">Sin participaciones registradas.</td></tr>';
            }
        });
    }
</script>

@endsection
