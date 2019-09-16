<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class estudiante extends Model
{
    protected $fillable = [
        'id_lis_estud'
    ];
    protected $table = 'lista_estudiantes';
}
