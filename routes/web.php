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

//Route pour la partie login

Route::get('/', 'HomeController@test');
Route::post('/admin_login', 'HomeController@login');
Route::get('/user/activation/{token}','AdminController@password');
Route::get('/user/reset/{token}','AdminController@res');

Route::get('/user/reset', 'AdminController@ren');
Route::post('/user/reset/email', 'AdminController@reset');
Route::post('/user/{token}','AdminController@active_compte');
Route::post('/user/res/{token}','AdminController@active_compte2');
Route::get('/logout', 'SuperAdminController@logout');
Route::get('admin', 'HomeController@index');
Route::get('/dashboard','SuperAdminController@index');
Route::get('/dashboard','SuperAdminController@countData');


//Partie Utilisateur

Route::get('/add-admin', 'AdminController@index');
Route::get('/all-admin', 'AdminController@all_admin');
Route::post('/add-admin/fetch', 'AdminController@fetch')
    ->name('SuperAdminController.fetch');

Route::get('/searchUser', 'AdminController@search');
Route::get('/details-admin/{admin_id}', 'AdminController@detail_admin');
Route::get('/unactive-admin/{admin_id}', 'AdminController@unactive_admin');
Route::get('/active-admin/{admin_id}', 'AdminController@active_admin');
Route::get('/edit-admin/{admin_id}', 'AdminController@edit_admin');
Route::get('/edit-admin-profil/{admin_id}', 'AdminController@admin_edit_pro');
Route::post('/profil-admin-update/{admin_id}', 'AdminController@update_pass');

Route::get('/delete-admin/{admin_id}', 'AdminController@delete_admin');

Route::post('/save-admin', 'AdminController@save_admin');
Route::post('/update-admin/{admin_id}', 'AdminController@update_admin');


//Route pour la partie Organisme de Formation
Route::get('/add-of', 'OfController@index');
Route::post('/save-of', 'OfController@save_of');
Route::post('/save-agree', 'OfController@save_agre');

Route::get('/searchOf', 'OfController@search');

Route::get('/all-of', 'OfController@all_of');
Route::get('/excel', 'OfController@excel');

Route::get('/unactive-of/{of_id}', 'OfController@unactive_of');
Route::get('/active-of/{of_id}', 'OfController@active_of');
Route::get('/edit-of/{of_id}', 'OfController@edit_of');
Route::get('/edit-agre-of/{of_id}', 'OfController@edit_agre_of');

Route::get('/details-of/{of_tok}', 'OfController@detail_of');

Route::get('/delete-of/{name}', 'OfController@delete_of');
Route::get('/delete-agre-of/{admin_id}', 'OfController@delete_agre_of');
Route::post('/update-of/{of_id}', 'OfController@update_of');
Route::post('/update-agre-of/{of_id}', 'OfController@update_agre_of');

//Route pour les Entreprise Utilisatrice
Route::get('/add-eu', 'EuController@index');
Route::get('/infos', 'EuController@getInfo');
Route::post('/save-eu', 'EuController@save_eu');
Route::get('/excel-eu', 'EuController@excel');
Route::get('/all-eu', 'EuController@all_eu');
Route::get('/searchEu', 'EuController@search');
Route::get('/unactive-eu/{eu_id}', 'EuController@unactive_eu');
Route::get('/active-eu/{eu_id}', 'EuController@active_eu');
Route::get('/all-eu', 'EuController@all_eu');
Route::get('/detail-eu/{eu_id}', 'EuController@detail_eu');
Route::get('/edit-eu/{eu_id}', 'EuController@edit_eu');
Route::get('/delete-eu/{eu_id}', 'EuController@delete_eu');
Route::post('/update-eu/{eu_id}', 'EuController@update_eu');
Route::get('/searchEUA', 'EuController@searchA');
Route::get('/searchEUN', 'EuController@searchN');
Route::get('/searchEUE', 'EuController@searchE');

//Route Pour les entreprise Intervenantes
Route::get('/add-ei', 'EiController@index');
Route::post('/save-ei', 'EiController@save_ei');

Route::get('/all-ei', 'EiController@all_ei');
Route::get('/searchEi', 'EiController@search');
Route::get('/unactive-ei/{ei_id}', 'EiController@unactive_ei');
Route::get('/active-ei/{ei_id}', 'EiController@active_ei');
Route::get('/edit-ei/{ei_id}', 'EiController@edit_ei');
Route::get('/edit-details/{ei_id}', 'EiController@detail_ei');
Route::get('/delete-ei/{ei_id}', 'EiController@delete_ei');
Route::post('/update-ei/{ei_id}', 'EiController@update_ei');
Route::get('/detail-ei/{ei_id}', 'EiController@detail_ei');
Route::get('/searchEIE', 'EiController@searchN');
Route::get('/searchEIA', 'EiController@searchE');

//Route pour la gestion des formateurs
Route::get('/add-form', 'FormateurController@index');
Route::post('/save-form', 'FormateurController@save_form');
Route::post('/save-form_of', 'FormateurController@saveNewforma');
Route::get('/all-form',  'FormateurController@all_form');
Route::get('/unactive-form/{form_id}', 'FormateurController@unactive_form');
Route::get('/active-form/{form_id}', 'FormateurController@active_form');
Route::get('/searchForm', 'FormateurController@search');
Route::get('/delete-form/{form_id}', 'FormateurController@delete_form');
Route::get('/delete-form-fo/{form_token}', 'FormateurController@delete_form2');
Route::get('/edit-form/{form_id}', 'FormateurController@edit_form');
Route::get('/edit-form2/{form_id}', 'FormateurController@edit_form2');
Route::post('/update-form/{form_id}', 'FormateurController@update_form');
Route::post('/update-form-fo/{form_id}', 'FormateurController@update_form2');
Route::get('/details-form/{form_token}', 'FormateurController@detail_form');
Route::get('/valide-form/{form_id}', 'FormateurController@form_valide');
Route::get('/unvalide-form/{form_id}', 'FormateurController@form_unvalide');
Route::get('/searchOfA', 'FormateurController@searchA');
Route::get('/searchOfN', 'FormateurController@searchN');

//Route pour la gestion des formations
Route::get('/add-formt', 'FormationController@index');
Route::post('/save-formt', 'FormationController@save_formt');
Route::get('/all-formt',  'FormationController@all_formt');
Route::get('/all-formt-N',  'FormationController@all_formt_n');
Route::get('/searchFormt', 'FormationController@search');
Route::get('/searchFormt-N', 'FormationController@search2');
Route::get('/delete-formt/{formt_id}', 'FormationController@delete_formt');
Route::get('/edit-formt/{formt_id}', 'FormationController@edit_formt');
Route::post('/update-formt/{formt_id}', 'FormationController@update_formt');
Route::get('/details-formt/{formt_id}', 'FormationController@detail_formt');




//Route pour la gestion des stagiares
Route::get('/add-stag', 'StagiaireController@index');
Route::post('/save-stag', 'StagiaireController@save_stag');
Route::post('/save-stag-fo', 'StagiaireController@saveNewforma');

Route::get('/all-stag',  'StagiaireController@all_stag');
Route::get('/details-stag/{stag_token}', 'StagiaireController@detail_stag');
Route::get('/searchStag', 'StagiaireController@search');
Route::get('/delete-stag/{stag_id}', 'StagiaireController@delete_stag');
Route::get('/delete-stag-ap/{stag_token}', 'StagiaireController@delete_stag2');
Route::get('/details-doc/{doc_id}', 'DocumentController@detail_doc');
Route::get('/edit-stag/{stag_id}', 'StagiaireController@edit_stag');
Route::get('/edit-stag2/{stag_id}', 'StagiaireController@edit_stag2');
Route::post('/update-stag/{stag_id}', 'StagiaireController@update_stag');
Route::post('/update-stag-fo/{stag_id}', 'StagiaireController@update_stag2');
Route::get('/unactive-stag/{stag_id}', 'StagiaireController@unactive_stag');
Route::get('/active-stag/{stag_id}', 'StagiaireController@active_stag');

Route::get('/valide-stag/{stag_id}', 'StagiaireController@stag_valide');
Route::get('/unvalide-stag/{stag_id}', 'StagiaireController@stag_unvalide');
Route::get('/searchStgA', 'StagiaireController@searchA');
Route::get('/searchStgN', 'StagiaireController@searchN');



