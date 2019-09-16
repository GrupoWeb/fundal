<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class padres extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'id_cap_padres'
    ];
    protected $table = 'cap_padres';
}
