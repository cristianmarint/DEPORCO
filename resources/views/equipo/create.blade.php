@extends('layouts.admin')
@section('title','Equipos')
@section('content')
    <!-- Breadcrumb-->
    <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/admin')}}">Inicio</a></li>
            <li class="breadcrumb-item active"><a href="{{url('Equipos')}}">Equipos</a></li>
            <li class="breadcrumb-item">Crear</li>
        </ul>
    </div>

    <!-- Dashboard Counts Section-->
    <section class="dashboard-counts">
        <div class="container-fluid">
            <div class="bg-white has-shadow">
                <!-- Form Elements -->
                <div class="card">
                    <div class="card-body">
                        {{-- <form action="{{route('equipos.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                            @csrf

                            <div class="form-group row">
                                <label for="create_nit" class="form-control-label col-sm-3 ">Nit</label>
                                <div class="col-sm-9">
                                    <input id="create_nit" type="text" name="nit" class="form-control {{ $errors->has('nit') ? ' is-invalid' : '' }}" value="{{old('nit')}}">
                                    @if ($errors->has('nit'))
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('nit') }}</strong>
                                            </span>
                                    @endif
                                </div>
                            </div>



                        </form> --}}

                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection

@section('scripts')
    <script type="text/javascript">
        $(document).ready(function(){
            var modelo_departamento = $('#create_departamento');
            modelo_departamento.change(function(){
                modelo_departamento.each(function () {
                    var departamento = modelo_departamento.val();

                    var modelo_municipio = $('#create_municipio');
                    modelo_municipio.empty();
                    modelo_municipio.append("<option value='0' >Seleccione un Municipio / Ciudad</option>");
                    console.log(departamento);
                    $.ajax({
                        url: "/institutos/municipios/"+departamento,
                        type: 'GET'
                    }).done(function (data) {
                        $.each(data, function(key, item) {
                            modelo_municipio.append("<option value='" + item.id + "'>" + item.nombre + "</option>");
                        });
                    }).fail( function() {
                        console.log('Error');
                    })
                });
            });
        });
    </script>
@endsection

