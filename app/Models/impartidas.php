<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class impartidas extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'id_cap_impar'
    ];
    protected $table = 'cap_impartidas';
}
