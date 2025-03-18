<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('tractores', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->year('anio_fabricacion');
            $table->decimal('precio_mercado', 10, 2);
            $table->integer('potencia');
            $table->text('descripcion')->nullable();
            $table->string('imagen')->default('https://res.cloudinary.com/dascvtkd1/image/upload/v1741811514/005f4bee-169d-4f06-acb2-7eed09f8d580.png');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tractores');
    }
};
