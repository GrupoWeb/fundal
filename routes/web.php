<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();
/* CoreUI templates */

Route::group(['middleware' => 'cors'], function(){
	Route::middleware('auth')->group(function() {
		Route::view('/', 'panel.blank');

		Route::get('estudiante','menuController@showEstudiante');
		Route::get('getEstudiante','menuController@getEstudiante');
		Route::post('addEstudiante','menuController@addEstudiante');
		Route::put('updateEstudiante','menuController@updateEstudiante');
		Route::put('deleteEstudiante','menuController@deleteByIdCategory');

		Route::get('jornada','menuController@showJornada');
		Route::get('getjornada','menuController@getjornada');
		Route::post('addjornada','menuController@addjornada');
		Route::put('updatejornada','menuController@updatejornada');
		Route::put('deletejornada','menuController@deleteByJornada');

		Route::get('Cpadres','menuController@showCpadres');
		Route::get('getPadres','menuController@getPadres');
		Route::post('addPadres','menuController@addPadres');
		Route::put('updatePadres','menuController@updatePadres');
		Route::put('deletePadres','menuController@deleteByPadres');

		Route::get('impartidas','menuController@showimpartidas');
		Route::get('getInfo','menuController@getDataImpartidas');
		Route::post('addImpartidas','menuController@addImpartidas');
		Route::put('updateImpartidas','menuController@updateImpartidas');
		Route::put('deleteImpartidas','menuController@deleteByImpartidas');


		Route::get('recibida','menuController@showRecibida');
		Route::get('getRecibida','menuController@getRecibida');
		Route::post('addRecibida','menuController@addRecibida');
		Route::put('updateRecibida','menuController@updateRecibida');
		Route::put('deleteRecibida','menuController@deleteByRecibida');

		Route::get('PrinterRecibidas','menuController@showprinterRecibidas');
		Route::get('PrinterEstudiantes','menuController@showprinterEstudiantes');
		Route::get('PrinterImpartidas','menuController@showprinterImpartidas');
		Route::get('PrinterJornadas','menuController@showprinterJornadas');
		Route::get('PrinterPadres','menuController@showprinterPadres');


		// Section CoreUI elements
		// Route::view('/sample/dashboard','samples.dashboard');
		// Route::view('/sample/buttons','samples.buttons');
		// Route::view('/sample/social','samples.social');
		// Route::view('/sample/cards','samples.cards');
		// Route::view('/sample/forms','samples.forms');
		// Route::view('/sample/modals','samples.modals');
		// Route::view('/sample/switches','samples.switches');
		// Route::view('/sample/tables','samples.tables');
		// Route::view('/sample/tabs','samples.tabs');
		// Route::view('/sample/icons-font-awesome', 'samples.font-awesome-icons');
		// Route::view('/sample/icons-simple-line', 'samples.simple-line-icons');
		// Route::view('/sample/widgets','samples.widgets');
		// Route::view('/sample/charts','samples.charts');
	});
}); 
// Section Pages
Route::view('/sample/error404','errors.404')->name('error404');
Route::view('/sample/error500','errors.500')->name('error500');