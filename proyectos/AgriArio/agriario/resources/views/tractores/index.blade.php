@extends('layouts.app')

@section('content')
    <div class="container">
        <h1 class="mb-4">Lista de Tractores</h1>
        <div class="row">
            @foreach($tractores as $tractor)
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img src="{{ asset($tractor->imagen) }}" class="card-img-top" alt="Imagen de {{ $tractor->nombre }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $tractor->nombre }}</h5>
                            <p class="card-text"><strong>Año:</strong> {{ $tractor->anio_fabricacion }}</p>
                            <p class="card-text"><strong>Precio:</strong> ${{ number_format($tractor->precio_mercado, 2) }}</p>
                            <p class="card-text"><strong>Potencia:</strong> {{ $tractor->potencia }} HP</p>
                            <p class="card-text">{{ $tractor->descripcion }}</p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection