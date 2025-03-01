<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tractores', function (Blueprint $table) {
            $table->id();
            $table->string('nombre_tractor');
            $table->decimal('precio');
            $table->longText('descripcion');
            $table->integer('caballos_potencia');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
