@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-sm bg-dark-subtle text-dark">
                    <div class="card-header text-center">
                        <h1 class="mb-0 text-center text-black fw-bolder fs-1">Añadir Tractor</h1>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('tractores.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                            </div>

                            <div class="mb-3">
                                <label for="imagen" class="form-label">Imagen</label>
                                <input type="text" class="form-control" id="imagen" name="imagen" required>
                            </div>

                            <div class="mb-3">
                                <label for="anio_fabricacion" class="form-label">Año de fabricación</label>
                                <input type="number" class="form-control" id="anio_fabricacion" name="anio_fabricacion"
                                    required>
                            </div>

                            <div class="mb-3">
                                <label for="precio_mercado" class="form-label">Precio de mercado</label>
                                <input type="number" class="form-control" id="precio_mercado" name="precio_mercado"
                                    step="0.01" required>
                            </div>

                            <div class="mb-3">
                                <label for="potencia" class="form-label">Potencia (HP)</label>
                                <input type="number" class="form-control" id="potencia" name="potencia" required>
                            </div>

                            <div class="mb-3">
                                <label for="descripcion" class="form-label">Descripción</label>
                                <textarea class="form-control" id="descripcion" name="descripcion" rows="4"
                                    required></textarea>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Añadir Tractor</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection