<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\estudiante;

class menuController extends Controller
{
    public function showEstudiante(){
        return view('menu.estudiante');
    }

    public function getEstudiante(){
        $data = estudiante::all();
        return response()->json($data, 200);
    }

    public function addEstudiante(Request $request){
        $data = new estudiante;

        $data->id_lis_estud = $request->ids;
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

        dd($data);
       return response()->json($data->save(), 200);
    }
}
