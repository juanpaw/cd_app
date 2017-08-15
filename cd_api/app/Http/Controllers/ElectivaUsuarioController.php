<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\cd_electiva_usuario;
use App\cd_electivas;

class ElectivaUsuarioController extends Controller
{
    public function store(Request $request)
    {
        $ret=0;
        $cd_elec_usua = new cd_electiva_usuario();

        $cd_elec_usua->id_user = $request->id_user;
        $cd_elec_usua->id_electiva = $request->id_electiva;
        $res=$cd_elec_usua->save();
        if ($res) {
            $ret=1;
        }
        return $ret;
    }

    public function show(Request $request)
    {
        $resp=[];
        $elec_usua=cd_electiva_usuario::where('id_user', $request->id)->get();
        foreach ($elec_usua as $key => $value) {
            
            $elec=cd_electivas::where('id_electiva', $value['id_electiva'])->get();
            $resp[][$value->id_user]=$elec[0]->nombre;

        }
                 
        return $resp;
    }
}
