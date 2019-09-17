<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class recibidas extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'id_cap_recibidas'
    ];
    protected $table = 'capacitaciones_recibidas';
}
