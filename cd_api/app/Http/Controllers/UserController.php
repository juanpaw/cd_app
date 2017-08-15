<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\User;
use \App\cd_usuarios_perfiles;
use Illuminate\Support\Facades\Input;
class UserController extends Controller
{
    
    public function index(Request $request)
    {
        //User::where('id_user',$request)
    }
    public function login(Request $request)
    {	   	
		$ret=false;
    	$user = $request->input('user');
    	$password = $request->input('password');
    	
        $lgn=User::where('user', $user)->where('psswd', $password)->get();

        if(count($lgn)>0){
        	$ret=true;
        	$id_user=$lgn[0]->id_user;
        	$tr=cd_usuarios_perfiles::where('id_user',$id_user)->get();
        	$ret=$id_user;
        }
        return [$ret];
    } 
    
    public function store(Request $request)
    {
        $ret=0;
        $user = $request->input('user');
        $password = $request->input('password');        
        $perfil = (integer)$request->input('id_perfil');
        User::create(Input::all());

        $lgn=User::where('user', $user)->get();
        
        $cd_usu_per = new cd_usuarios_perfiles();

        $cd_usu_per->id_user = $lgn[0]->id_user;
        $cd_usu_per->id_perfil = $perfil;
        $res=$cd_usu_per->save();
        if($res)
        {
            $ret=1;
        }
        return $ret;
        
    }  
    public function show()
    {

        $estu_perf=cd_usuarios_perfiles::where('id_perfil', 2)->get();      
        foreach ($estu_perf as $key => $value) {
            $estu=User::where('id_user',$value['id_user'])->get();
            $estu_perf[$key]['estu']=$estu[0]->nombre.' '.$estu[0]->apellido;
           
        }
        return $estu_perf;
    }     
}
