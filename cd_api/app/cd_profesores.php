<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cd_profesores extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombres', 'apellidos'
    ];
}
