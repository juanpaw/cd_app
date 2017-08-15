<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\cd_electivas;
use App\cd_profesores;

class ElectivaController extends Controller
{
    public function index()
    {
        $ele=json_decode(cd_electivas::all(),true);
        $pro=json_decode(cd_profesores::all(),true);
        
        foreach ($ele as $key => $value) {
            
            foreach ($pro as $key2 => $value2) {
                
                if($ele[$key]['id_profesor']===$value2['id_profesor']){
                    $ele[$key]['profesor']=$value2['nombres'].' '.$value2['apellidos'];
                }
            }
        
        }
        return json_encode($ele);

    }  

    public function store()
    {
        return cd_electivas::create(Input::all());
    }

    public function getElectiva(Request $request)
    {
        return cd_electivas::where('id_electiva',$request->id)->get();
    }    

    public function update(Request $request)
    {
        return cd_electivas::where('id_electiva',$request->id_electiva)->update(Input::all());
    }
    public function destroy($id)
    {
        return cd_electivas::where('id_electiva',$id)->delete();
    }            
}
