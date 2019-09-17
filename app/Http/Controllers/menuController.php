<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\estudiante;
use App\Models\jornada;
use App\Models\padres;
use App\Models\impartidas;
use App\Models\recibidas;

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

    public function showRecibida(){
        return view('menu.recibida');
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
    
    public function getDataImpartidas(){
        $data = impartidas::select('id_cap_impar','tema')->where('activo','=','A')->get();
        return response()->json($data, 200);
    }
    public function getRecibida(){
        $data = recibidas::select('id_cap_recibidas','tema')->where('activo','=','A')->get();
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

    public function addImpartidas(Request $request){
        $data = new impartidas;

        // $data->id_lis_estud = $request->ids;
        $data->fecha = $request->fechas;
        $data->tema = $request->temas;
        $data->logros_resultados = $request->logrosRs;
        $data->tiempo = $request->tiempos;
        $data->institucion_representan = $request->institucionRs;
        $data->pais = $request->paiss;
        $data->departamento = $request->departamentos;
        $data->municipio = $request->municipios;
        $data->aldea = $request->aldeas;
        $data->nombre_docente = $request->docentes;
        $data->cantidad_docentesfundal = $request->docentefs;
        $data->profesional_disciplina = $request->pdisciplinas;
        $data->cantidad_profesionales = $request->cprofesionals;
        $data->practicantes = $request->practicantess;
        $data->cantidad_praticantes = $request->cpracticantess;
        $data->estudiantes = $request->estudiantess;
        $data->cantidad_estudiantes = $request->cestudiantess;
        $data->cantidad_docentes = $request->cdocentess;
        $data->total_cantidad = $request->totalCs;
        $data->hombres = $request->hombress;
        $data->mujeres = $request->mujeress;
        $data->total_nuevos = $request->tnuevoss;
        $data->total_hombres = $request->thombress;
        $data->total_mujeres = $request->tmujeress;
        $data->grupo_etnico = $request->grupoEs;
        $data->estudiantes_direct = $request->estudianteDs;
        $data->estudiantes_indirec_cnDiscapa = $request->estudianteICs;
        $data->estudiantes_direc_SnDiscapa = $request->estudianteSCs;
        $data->nombre_dlfacilitador = $request->nombreFas;
        $data->tipo_actividad = $request->tipoAcs;
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

    public function addRecibida(Request $request){
        $data = new recibidas;

        // $data->id_lis_estud = $request->ids;
        $data->fecha = $request->fechaa;
        $data->tema = $request->temaa;
        $data->logros_resultados = $request->logrosRa;
        $data->tiempo = $request->tiempoa;
        $data->institucion_representan = $request->institucionRa;
        $data->pais = $request->paisa;
        $data->departamento = $request->departamentoa;
        $data->municipio = $request->municipioa;
        $data->aldea = $request->aldeaa;
        $data->docentes_fundal = $request->docenteFa;
        $data->cantidad_docentes = $request->cantidadDa;
        $data->total_cantidad = $request->tcantidada;
        $data->hombre = $request->hombresa;
        $data->mujeres = $request->mujeresa;
        $data->grupo_etnico = $request->grupoEa;
        $data->estudiantes_directos = $request->estudianteDa;
        $data->estudiantes_IndirectosDiscapacidad = $request->estudianteIDa;
        $data->estudiantes_indirectosSDiscapacidad = $request->estudianteISDa;
        $data->nbr_fcltdr = $request->nbrfcltdra;
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
    public function deleteByImpartidas(Request $request){
        $deleteById = impartidas::where('id_cap_impar', $request->id)->update(['activo' => 'I']);
        return $deleteById;
    }
    public function deleteByRecibida(Request $request){
        $deleteById = recibidas::where('id_cap_recibidas', $request->id)->update(['activo' => 'I']);
        return $deleteById;
    }



    // printer
    public function showprinterRecibidas(){
         try {
            $data = recibidas::where('activo','=','A')->get();
            // dd($data);
             $pdf = \PDF::loadView('printer.printRecibidas',[
                 'data' => $data
             ])->setPaper('a4', 'landscape'); 
            //  return $pdf->stream();
             return $pdf->download('Ediciones.pdf');
             
            // DB::commit(); 
         } catch (\Exceptio $e) {
             //DB::rollBack();
             print $e; 
             
         }
         
     }
    public function showprinterEstudiantes(){
         try {
            $data = estudiante::where('activo','=','A')->get();
            // dd($data);
             $pdf = \PDF::loadView('printer.printerEstudiantes',[
                 'data' => $data
             ])->setPaper('a4', 'landscape'); 
            //  return $pdf->stream();
             return $pdf->download('Ediciones.pdf');
             
            // DB::commit(); 
         } catch (\Exceptio $e) {
             //DB::rollBack();
             print $e; 
             
         }
         
     }
    public function showprinterImpartidas(){
         try {
            $data = impartidas::where('activo','=','A')->get();
            // dd($data);
             $pdf = \PDF::loadView('printer.printerImpartidas',[
                 'data' => $data
             ])->setPaper('a4', 'landscape'); 
            //  return $pdf->stream();
             return $pdf->download('Ediciones.pdf');
             
            // DB::commit(); 
         } catch (\Exceptio $e) {
             //DB::rollBack();
             print $e; 
             
         }
         
     }
    public function showprinterJornadas(){
         try {
            $data = jornada::where('activo','=','A')->get();
            // dd($data);
             $pdf = \PDF::loadView('printer.printerJornadas',[
                 'data' => $data
             ])->setPaper('a4', 'landscape'); 
            //  return $pdf->stream();
             return $pdf->download('Ediciones.pdf');
             
            // DB::commit(); 
         } catch (\Exceptio $e) {
             //DB::rollBack();
             print $e; 
             
         }
         
     }
    public function showprinterPadres(){
         try {
            $data = padres::where('activo','=','A')->get();
            // dd($data);
             $pdf = \PDF::loadView('printer.printerPadres',[
                 'data' => $data
             ])->setPaper('a4', 'landscape'); 
            //  return $pdf->stream();
             return $pdf->download('Ediciones.pdf');
             
            // DB::commit(); 
         } catch (\Exceptio $e) {
             //DB::rollBack();
             print $e; 
             
         }
         
     }
 
}
