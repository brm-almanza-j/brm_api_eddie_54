<?php

namespace App\Helpers;

use App\Otb_Ciudades;
use App\Otb_Regionales;
use App\Otb_Usuarios;
use App\Otb_Grupos;
use App\Otb_Areas;
use App\Otb_Clientes;
use App\Otb_Perfiles;
use App\Otb_Tipos_Ots;
use App\Otb_Marcas;
use App\Otb_Franjas_Horarias;


class Recursos  {
    /**
     * Retorna todas las regionales (id, nombre) en un array
     */
    public static function getRegionales(){
        $relacion_regional = Otb_Regionales::all('id', 'nombre');
        $array_regional= array('0'=> 'Seleccionar...');
        for($i=0; $i<count($relacion_regional); $i++){
            $array_regional = $array_regional+[ $relacion_regional[$i]->id => $relacion_regional[$i]->nombre ];
        }

        return $array_regional;
    }

    /**
     * Retorna todas las ciudades (id, nombre) en un array
     */
    public static function getCiudades(){
        $relacion_ciudad = Otb_Ciudades::all('id', 'nombre');
        $array_ciudad = array('0' => 'Seleccionar...');
        for($i=0; $i<count($relacion_ciudad); $i++){
            $array_ciudad = $array_ciudad+[ $relacion_ciudad[$i]->id => $relacion_ciudad[$i]->nombre ];
        }
        return $array_ciudad;
    }

    /**
     * Retorna todos los usuarios (id, nombre) en un array
     */
    public static function getUsuarios(){
        $relacion_usuario = Otb_Usuarios::all('id', 'nombre');
        $array_usuario = array('0' => 'Seleccionar...');
        for($i=0; $i<count($relacion_usuario); $i++){
            $array_usuario = $array_usuario+[ $relacion_usuario[$i]->id => $relacion_usuario[$i]->nombre ];
        }
        return $array_usuario;
    }

    /**
     * Retorna todas las areas (id, nombre) en un array
     */
    public static function getAreas(){
        $relacion_area = Otb_Areas::all('id', 'nombre');
        $array_area = array('0' => 'Seleccionar...');
        for($i=0; $i<count($relacion_area); $i++){
            $array_area = $array_area+[ $relacion_area[$i]->id => $relacion_area[$i]->nombre ];
        }
        return $array_area;
    }

    /**
     * Retorna todos los clientes (id, nombre) en un array
     */
    public static function getClientes(){
        $relacion_cliente = Otb_Clientes::all('id', 'nombre');
        $array_cliente = array('0' => 'Seleccionar...');
        for($i=0; $i<count($relacion_cliente); $i++){
            $array_cliente = $array_cliente+[ $relacion_cliente[$i]->id => $relacion_cliente[$i]->nombre ];
        }
        return $array_cliente;
    }

    /**
     * Retorna todos los grupos (id, nombre) en un array
     */
    public static function getGrupos(){
        $relacion_grupo = Otb_Grupos::all('id', 'nombre');
        $array_grupo = array('0' => 'Seleccionar...');
        for($i=0; $i<count($relacion_grupo); $i++){
            $array_grupo = $array_grupo+[ $relacion_grupo[$i]->id => $relacion_grupo[$i]->nombre ];
        }
        return $array_grupo;
    }

    /**
     * Retorna todas las marcas (id, nombre) en un array
     */
    public static function getMarcas(){
        $relacion_marca = Otb_Marcas::all('id', 'nombre');
        $array_marca= array('0'=> 'Seleccionar...');
        for($i=0; $i<count($relacion_marca); $i++){
            $array_marca = $array_marca+[ $relacion_marca[$i]->id => $relacion_marca[$i]->nombre ];
        }
        return $array_marca;
    }

    /**
     * Retorna todas las franjas horarias (id, nombre) en un array
     */
    public static function getFranjasHorarias(){
        $relacion_fran_hor = Otb_Franjas_Horarias::all('id', 'franja_horaria');
        $array_fran_hor = array('0' => 'Seleccionar...');
        for($i=0; $i<count($relacion_fran_hor); $i++){
            $array_fran_hor = $array_fran_hor+[ $relacion_fran_hor[$i]->id => $relacion_fran_hor[$i]->nombre ];
        }
        return $array_fran_hor;
    }

    /**
     * Retorna todos los perfiles (id, nombre) en un array
     */
    public static function getPerfiles(){
        $relacion_perfil = Otb_Perfiles::all('id', 'nombre');
        $array_perfil = array('0' => 'Seleccionar...');
        for($i=0; $i<count($relacion_perfil); $i++){
            $array_perfil = $array_perfil+[ $relacion_perfil[$i]->id => $relacion_perfil[$i]->nombre ];
        }
        return $array_perfil;
    }
}
?>