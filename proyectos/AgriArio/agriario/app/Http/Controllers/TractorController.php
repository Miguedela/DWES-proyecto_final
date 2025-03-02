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
        $tractores = Tractor::all(); // Recuperar todos los tractores
        return view('tractores.index', compact('tractores'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
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
    public function edit(Tractor $tractor)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Tractor $tractor)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Tractor $tractor)
    {
        //
    }
}
