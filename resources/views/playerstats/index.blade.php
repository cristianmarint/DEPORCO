@extends('layouts.admin')
@section('title','Estadísticas de Jugadores')
@section('content')

<div class="card mt-3 mx-3">
    <div class="card-header">
        <h4 class="mb-0"><span class="fa fa-chart-bar"></span> Estadísticas de jugadores</h4>
        <small class="text-muted">Totales acumulados de partidos jugados, anotaciones y faltas.</small>
    </div>

    <div class="card-body table-responsive">
        <table id="playerStatsTable" class="table table-striped table-hover" style="text-align: center;">
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
                @forelse($players as $i => $player)
                    <tr>
                        <td>{{ $i + 1 }}</td>
                        <td>{{ trim($player->name) ?: '— sin nombre —' }}</td>
                        <td>{{ $player->cedula }}</td>
                        <td>{{ $player->matches_played }}</td>
                        <td><strong>{{ $player->goals }}</strong></td>
                        <td>{{ $player->fouls }}</td>
                        <td>
                            <button type="button"
                                    class="btn btn-sm btn-outline-info"
                                    data-player-id="{{ $player->id }}"
                                    onclick="loadPlayerDetail({{ $player->id }})">
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

<div id="playerDetailCard" class="card mt-3 mx-3" style="display:none;">
    <div class="card-header">
        <h5 class="mb-0">Detalle: <span id="playerDetailName"></span></h5>
    </div>
    <div class="card-body">
        <div id="playerDetailSummary" class="mb-3"></div>
        <table class="table table-sm">
            <thead>
                <tr><th>Torneo</th><th>Partidos</th><th>Anotaciones</th><th>Faltas</th></tr>
            </thead>
            <tbody id="playerDetailTournaments"></tbody>
        </table>
    </div>
</div>

<script>
    function loadPlayerDetail(id) {
        fetch('{{ url('/playerstats') }}/' + id, {
            headers: { 'Accept': 'application/json' },
            credentials: 'same-origin'
        })
        .then(function (r) { return r.json(); })
        .then(function (data) {
            if (!data || !data.player) { return; }
            document.getElementById('playerDetailCard').style.display = 'block';
            document.getElementById('playerDetailName').textContent = data.player.name || '';
            var totals = data.totals || {};
            document.getElementById('playerDetailSummary').innerHTML =
                '<strong>Cédula:</strong> ' + (data.player.cedula || '-') +
                ' &nbsp;|&nbsp; <strong>Partidos:</strong> ' + (totals.matches_played || 0) +
                ' &nbsp;|&nbsp; <strong>Anotaciones:</strong> ' + (totals.goals || 0) +
                ' &nbsp;|&nbsp; <strong>Faltas:</strong> ' + (totals.fouls || 0);
            var tbody = document.getElementById('playerDetailTournaments');
            tbody.innerHTML = '';
            (data.tournaments || []).forEach(function (t) {
                var tr = document.createElement('tr');
                tr.innerHTML = '<td>' + t.tournament + '</td><td>' + t.matches_played + '</td>'
                             + '<td>' + t.goals + '</td><td>' + t.fouls + '</td>';
                tbody.appendChild(tr);
            });
            if (!(data.tournaments || []).length) {
                tbody.innerHTML = '<tr><td colspan="4" class="text-muted">Sin participaciones registradas.</td></tr>';
            }
        });
    }
</script>

@endsection
