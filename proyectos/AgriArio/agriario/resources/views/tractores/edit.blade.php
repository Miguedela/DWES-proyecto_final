@extends('layouts.app')

@section('content')
    <div class="container">
        <h1 class="mb-4">Editar Tractor</h1>

        @if(isset($tractor))
            <p>Tractor ID: {{ $tractor->id }}</p>
        @else
            <p>Error: El objeto tractor no está definido.</p>
        @endif

        <form action="{{ route('tractores.update', $tractor->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value="{{ $tractor->nombre }}" required>
            </div>

            <div class="mb-3">
                <label for="anio_fabricacion" class="form-label">Año de fabricación</label>
                <input type="number" class="form-control" id="anio_fabricacion" name="anio_fabricacion"
                    value="{{ $tractor->anio_fabricacion }}" required>
            </div>

            <div class="mb-3">
                <label for="precio_mercado" class="form-label">Precio de mercado</label>
                <input type="number" class="form-control" id="precio_mercado" name="precio_mercado"
                    value="{{ $tractor->precio_mercado }}" step="0.01" required>
            </div>

            <div class="mb-3">
                <label for="potencia" class="form-label">Potencia (HP)</label>
                <input type="number" class="form-control" id="potencia" name="potencia" value="{{ $tractor->potencia }}"
                    required>
            </div>

            <div class="mb-3">
                <label for="descripcion" class="form-label">Descripción</label>
                <textarea class="form-control" id="descripcion" name="descripcion"
                    required>{{ $tractor->descripcion }}</textarea>
            </div>

            <div class="mb-3">
                <label for="imagen" class="form-label">Imagen</label>
                <input type="file" class="form-control" id="imagen" name="imagen">
            </div>

            <button type="submit" class="btn btn-primary">Actualizar Tractor</button>
        </form>
    </div>
@endsection