<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\estudiante;
use App\Models\jornada;
use App\Models\padres;

class menuController extends Controller
{
    public function showEstudiante(){
        return view('menu.estudiante');
    }

    public function showJornada(){
        return view('menu.jornada');
    }

    public function showCpadres(){
        return view('menu.padres');
    }

    public function showimpartidas(){
        return view('menu.impartidas');
    }

    public function getEstudiante(){
        $data = estudiante::select('id_lis_estud','nombre_partida')->where('activo','=','A')->get();
        return response()->json($data, 200);
    }

    public function getjornada(){
        $data = jornada::select('id_jornadas','tipo_jorna')->where('activo','=','A')->get();
        return response()->json($data, 200);
    }

    public function getPadres(){
        $data = padres::select('id_cap_padres','tema')->where('activo','=','A')->get();
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

    public function addPadres(Request $request){
        $data = new padres;

        // $data->id_lis_estud = $request->ids;
        $data->fecha = $request->fechaa;
        $data->tema = $request->temaa;
        $data->logros_resultados = $request->logrosRa;
        $data->tiempo = $request->tiempoa;
        $data->institucion_representan = $request->institucionRa;
        $data->programa_pertenecen = $request->programaPa;
        $data->pais = $request->paisa;
        $data->departamento = $request->departamentoa;
        $data->municipio = $request->municipioa;
        $data->aldea = $request->aldeaa;
        $data->cantidad_padres = $request->cantidadPa;
        $data->padres = $request->padresa;
        $data->madres = $request->madresa;
        $data->cantidad_miembros = $request->cantidadMa;
        $data->hombres = $request->hombresa;
        $data->mujeres = $request->mujeresa;
        $data->total_cantidad = $request->totalCa;
        $data->grupo_etnico = $request->grupoEa;
        $data->estudiantes_directos = $request->estudianteDa;
        $data->estudiantes_indirectos = $request->estudianteIa;
        $data->nombre_facilitador = $request->nombreFaa;
        $data->tipo_actividad = $request->tipoAca;
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

    public function deleteByPadres(Request $request){
        $deleteById = padres::where('id_cap_padres', $request->id)->update(['activo' => 'I']);
        return $deleteById;
    }
}
