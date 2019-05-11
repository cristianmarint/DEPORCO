@extends('layouts.deporco')
@section('title','Prensa')
@section('content')
<section id="features" class="mt-5">
        <div class="container">
  
          <div class="row feature-item">
            <div class="col-lg-6 wow fadeInUp">
              <img src="{{url('storage/storage/app/media_izq.svg')}}" style="color:##FFAD0B;" class="img-fluid" alt="">
            </div>
            <div class="col-lg-6 wow fadeInUp pt-5 pt-lg-0">
              <h4>Prensa</h4>
              <p>
                Si necesitas información relacionada con algín torneo ó liga y además posees permiso verificable del propietario comunicate con nosotros por medio de este <a class="alert-link" href="{{route('deporco.contact')}}">enlace</a>
              </p>
              <p>
                El uso de cualquier conjunto datos ó información proporcionados por {{config('app.name')}} deben de seguir nuestros <a class="alert-link" href="{{route('deporco.terms')}}">terminos y condiciones de nuestros servicios</a>
              </p>
            </div>
          </div>
  
          <div class="row feature-item mt-5 pt-5">
            <div class="col-lg-6 wow fadeInUp order-1 order-lg-2">
              <img src="{{url('storage/storage/app/media_der.svg')}}" class="img-fluid" alt="">
            </div>
  
            <div class="col-lg-6 wow fadeInUp pt-4 pt-lg-0 order-2 order-lg-1">
              <h4>Apuestas</h4>
              <p>
               Si deseas utilizar algun torneo o liga para la realización de apuestas o similares tus servicios debe de seguir nuestros <a class="alert-link" href="{{route('deporco.terms')}}">terminos y condiciones de nuestros servicios</a>
                ademas de poseer la información legal pertinen. Para mayor información,escribenos por medio de este <a class="alert-link" href="{{route('deporco.contact')}}">enlace</a>
             </p>
            </div>
            
          </div>
  
        </div>
      </section>
@endsection