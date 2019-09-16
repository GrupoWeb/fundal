<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class estudiante extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'id_lis_estud'
    ];
    protected $table = 'lista_estudiantes';
}
