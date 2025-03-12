<?php

namespace App\Http\Controllers;

use App\Models\Tractor;
use Illuminate\Http\Request;

class TractorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tractores = Tractor::paginate(6); // Recuperar todos los tractores
        return view('tractores.index', compact('tractores'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('tractores.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Depuración para ver los datos que llegan
        // dd($request->all());

        $request->validate([
            'nombre' => 'required|max:255',
            'anio_fabricacion' => 'required|digits:4|integer|min:1900|max:' . date('Y'),
            'precio_mercado' => 'required|numeric',
            'potencia' => 'required|integer',
            'descripcion' => 'required',
            'imagen' => 'required|string',
        ]);

        $tractor = Tractor::create([
            'nombre' => $request->nombre,
            'anio_fabricacion' => $request->anio_fabricacion,
            'precio_mercado' => $request->precio_mercado,
            'potencia' => $request->potencia,
            'descripcion' => $request->descripcion,
            'imagen' => $request->imagen,
        ]);

        // dd($tractor);

        return redirect()->route('tractores.index')->with('success', 'Tractor añadido exitosamente');
    }

    /**
     * Display the specified resource.
     */
    public function show(Tractor $tractor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $tractor = Tractor::findOrFail($id);
        return view('tractores.edit', compact('tractor'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Depuración para ver los datos que llegan
        // dd($request->all());

        $request->validate([
            'nombre' => 'required|max:255',
            'anio_fabricacion' => 'required|digits:4|integer|min:1900|max:' . date('Y'),
            'precio_mercado' => 'required|numeric',
            'potencia' => 'required|integer',
            'descripcion' => 'required',
            'imagen' => 'nullable|string|url',
        ]);

        $tractor = Tractor::findOrFail($id);

        // Actualizar los campos del tractor
        $tractor->nombre = $request->nombre;
        $tractor->anio_fabricacion = $request->anio_fabricacion;
        $tractor->precio_mercado = $request->precio_mercado;
        $tractor->potencia = $request->potencia;
        $tractor->descripcion = $request->descripcion;
        $tractor->imagen = $request->imagen;

        // Guardar los cambios en la base de datos
        $tractor->save();

        return redirect()->route('tractores.index')->with('success', 'Tractor actualizado exitosamente');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $tractor = Tractor::findOrFail($id);
        $tractor->delete();

        return redirect()->route('tractores.index')->with('success', 'Tractor eliminado exitosamente');
    }
}
