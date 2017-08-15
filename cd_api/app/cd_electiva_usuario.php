<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cd_electiva_usuario extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'cd_electiva_usuario'; 	
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id_user', 'id_electiva'
    ];
}
