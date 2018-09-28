<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\Recursos;
use App\Otb_Ordenes_Trabajos;
use App\Otb_Historicos_Ots;
use App\Otb_Usuarios_Ots;

class OrdenesTrabajosController extends Controller
{
    public function index($id_usuario){
        $ots = Otb_Ordenes_Trabajos::with('estado', 'cliente', 'marca', 'grupo', 'tipo_ot', 'usuario_crea', 'franja_horaria')
            ->join('otb_usuarios_ot', 'otb_orden_trabajo.id', '=', 'otb_usuarios_ot.id_orde_trabajo')
            ->where('otb_usuarios_ot.id_usuario', '=', $id_usuario)
            ->orderBy('id', 'ASC')->paginate(5);
        return $ots;
    }

    public function getAllOts(){
        $all_ots = Otb_Ordenes_Trabajos::all();
        return $all_ots;
    }

    public function addOts(Request $request){
        $add_ots = Otb_Ordenes_Trabajos::create($request->all());
        $idot  = $add_ots->id;
        $idusuarios  = $request->id_usuarios_responsables;
        foreach($idusuarios as $items){
            $add_usu_ots = new Otb_Usuarios_Ots();
            $add_usu_ots->id_orde_trabajo = $idot;
            $add_usu_ots->id_usuario = $items;
            $add_usu_ots->finalizado = "0";
            $add_usu_ots->save();
        }
        $addhistorico = new Otb_Historicos_Ots();
        $addhistorico->id_estado = "1";
        $addhistorico->comentario = $request->descripcion;
        $addhistorico->id_orden_trabajo = $idot;
        $addhistorico->id_usuario_comenta = $request->id_usuario_crea;
        $addhistorico->save();
        //return $add_ots."|||".$add_usu_ots."|||".$addhistorico;
    }

    public function getOts($id){
        $find_ots = Otb_Ordenes_Trabajos::find($id);
        return $find_ots;
    }

    public function editOts(Request $request, $id){
        $edit_ots = $this->getOts($id);
        $edit_ots->fill($request->all());
        $edit_ots->save();
        return $edit_ots;
    }

    public function addComentarios(Request $request){
        $comen_hist = Otb_Historicos_Ots::create($request->all());
    }

    public function getOtsEst($id){
        $relacion_estados = Otb_Ordenes_Trabajos::join('otb_usuarios_ot', 'otb_orden_trabajo.id', '=', 'otb_usuarios_ot.id_orde_trabajo')
        ->where('otb_usuarios_ot.id_usuario', '=', $id_usuario)
        ->where('id_estado', $id)->get();
        return $relacion_estados;
    }

    public function getOtsMarca($id){
        $relacion_marcas = Otb_Ordenes_Trabajos::join('otb_usuarios_ot', 'otb_orden_trabajo.id', '=', 'otb_usuarios_ot.id_orde_trabajo')
        ->where('otb_usuarios_ot.id_usuario', '=', $id_usuario)
        ->where('id_marca', $id)->get();
        return $relacion_marcas;
    }

    public function getOtsUsuario($id){
        $relacion_usuario = Otb_Ordenes_Trabajos::join('otb_usuarios_ot', 'otb_orden_trabajo.id', '=', 'otb_usuarios_ot.id_orde_trabajo')
        ->where('otb_usuarios_ot.id_usuario', '=', $id)->get();
        return $relacion_usuario;
    }

    public function getHistorico($id){
        $his_ot = Otb_Historicos_Ots::find($id);
        return $his_ot;
    }

    public function finishOts($id){
        $finish_ot = Otb_Usuarios_Ots::find($id);
        $finish_ot->finalizado = 1;
    }

}
