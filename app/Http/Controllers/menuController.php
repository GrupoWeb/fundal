<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\estudiante;
use App\Models\jornada;

class menuController extends Controller
{
    public function showEstudiante(){
        return view('menu.estudiante');
    }

    public function showJornada(){
        return view('menu.jornada');
    }

    public function getEstudiante(){
        $data = estudiante::select('id_lis_estud','nombre_partida')->where('activo','=','A')->get();
        return response()->json($data, 200);
    }

    public function getjornada(){
        $data = jornada::select('id_jornadas','tipo_jorna')->where('activo','=','A')->get();
        return response()->json($data, 200);
    }

    public function addEstudiante(Request $request){
        $data = new estudiante;

        // $data->id_lis_estud = $request->ids;
        $data->codigo = $request->codigos;
        $data->nombre_partida = $request->names;
        $data->genero = $request->generos;
        $data->fecha_nac = $request->fechasnac;
        $data->edad = $request->edads;
        $data->diagnostico = $request->diagnosticos;
        $data->clasificacion = $request->clasificaciones;
        $data->referido = $request->referidos;
        $data->constancia = $request->constancias;
        $data->departamento = $request->departamentos;
        $data->municipio = $request->municipios;
        $data->aldea = $request->aldeas;
        $data->telefono = $request->telefonos;
        $data->grupo_etnico = $request->etnias;
        $data->fecha_evaluacion = $request->fechasval;
        $data->fecha_ingreso = $request->fechasing;
        $data->docente = $request->docentes;
        $data->etapa_mineduc = $request->etapas;
        $data->codigo_mineduc = $request->codigosmineduc;
        $data->jornana = $request->jornadas;
        $data->etapa_fundal = $request->etapasfundal;
        $data->inclusion = $request->inclusiones;
        $data->fecha_egreso = $request->fingresos;
        $data->motivo_egreso = $request->motivoingresos;
        $data->consta_egreso = $request->constanciaegresos;
        $data->tipo = $request->tipos;
        $data->activo = 'A';

        
       return response()->json($data->save(), 200);
    }
    public function addjornada(Request $request){
        $data = new jornada;

        // $data->id_lis_estud = $request->ids;
        $data->tipo_jorna = $request->tjornadas;
        $data->insti_propo = $request->insti_propos;
        $data->departamento = $request->departamentos;
        $data->municipio = $request->municipios;
        $data->aldea = $request->aldeas;
        $data->total_refe = $request->Treferidos;
        $data->total_aten = $request->Tatendidos;
        $data->mujer = $request->mujers;
        $data->hombre = $request->hombres;
        $data->ladino = $request->ladinos;
        $data->maya = $request->mayas;
        $data->Xinka = $request->xinkas;
        $data->Garifuna = $request->garigunas;
        $data->mayor = $request->mayors;
        $data->menor = $request->menors;
        $data->tipo = $request->tipos;
        $data->activo = 'A';
        
       return response()->json($data->save(), 200);
    }

    public function deleteByIdCategory(Request $request){
        $deleteById = estudiante::where('id_lis_estud', $request->id)->update(['activo' => 'I']);
        return $deleteById;
    }

    public function deleteByJornada(Request $request){
        $deleteById = jornada::where('id_jornadas', $request->id)->update(['activo' => 'I']);
        return $deleteById;
    }
}
