<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\cd_perfiles;
class PerfilController extends Controller
{
    public function index()
    {
    	return $pro=json_decode(cd_perfiles::all(),true);
    }
}
