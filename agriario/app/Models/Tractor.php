<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tractor extends Model
{
    use HasFactory;

    protected $table = 'tractores'; // Especifica el nombre correcto de la tabla
    protected $fillable = ['nombre', 'anio_fabricacion', 'precio_mercado', 'potencia', 'descripcion', 'imagen'];
}
