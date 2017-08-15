<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cd_electivas extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombre', 'descripcion','id_profesor','cupos'
    ];
}
