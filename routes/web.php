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