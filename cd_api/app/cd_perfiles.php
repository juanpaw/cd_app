<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cd_perfiles extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'perfil', 'id_profesor','cupos'
    ];
}
