<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\cd_profesores;
use App\cd_electivas;

class ProfesorController extends Controller
{
    public function index()
    {
        return cd_profesores::all();
    }  
    	
    public function show($id_profesor)
    {
        return cd_profesores::where('id_profesor',$id_profesor)->get();
    }  

    public function electivas($id_profesor)
    {
        $prof=cd_profesores::where('id_profesor',$id_profesor)->get();
        $dec_prof=json_decode($prof[0],true);
        $electivas=cd_electivas::where('id_profesor',$id_profesor)->get();        
        //return $dec_prof;
        foreach ($electivas as $key => $value) {
            $arr_elec=json_decode($value,true);
        	
        	if($arr_elec['id_profesor']===$dec_prof['id_profesor']){
        		$dec_prof['electiva'][]=$arr_elec['nombre'];
        	}
        	
        }
        //return $prof[0];
        return json_encode($dec_prof);
        
    }    
}
