<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();
class FormateurController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        return view('formateur.add_fo');
    }

    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_form_info = DB::table('tbl_formateurs')
            ->where('form_name', 'like', '%'.$search.'%')
            ->orderByDesc('form_id')
            ->paginate(5);
        $nb= $all_form_info->count();
        return view('formateur.all_fo', ['all_form_info' => $all_form_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des form
    public function all_form()
    {

        $this->AdminAuthCheck();
        $all_form_info =  DB::table('tbl_formateurs')
            ->orderByDesc('form_id')
            ->paginate(5);
        $nb= $all_form_info->count();

        return view('formateur.all_fo', ['all_form_info' => $all_form_info ])
            ->with(['nb' => $nb]);

    }


    //supprimer Un formateur
    public function delete_form($form_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->delete();
        Session::put('message', 'Cette entreprise Intervenante a été supprimé... ');
        return back();
    }

    //ajouter un form
    public function save_form(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'form_name' => ['required'],
            'form_prenom' => ['required'],
            'form_adresse' => ['required'],
            'form_of' => ['required'],
        ]);
        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_adresse'] = $request->form_adresse;
        $data['form_of'] = $request->form_of;

        DB::table('tbl_formateurs')->insert($data);
        Session::put('message', "le formateur " . $data['form_name'] . " a été crée avec succes !");
        return redirect('/all-form');
            dump($data);
    }



    //selectionner un form
    public function edit_form($form_id)
    {
        $this->AdminAuthCheck();
        $form_info = DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->first();

        $form_info = view('formateur.edit_fo')->with('form_info', $form_info);
        return View('admin_layout')
            ->with('formateur.all_fo', $form_info);

    }

    public  function  update_form(Request $request, $form_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'form_name' => ['required'],
            'form_prenom' => ['required'],
            'form_adresse' => ['required'],
            'form_of' => ['required'],
        ]);
        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_adresse'] = $request->form_adresse;
        $data['form_of'] = $request->form_of;

        DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->update($data);
        Session::put('message', " ".$data['form_name']." a eté modifié avec Succes !");
        return redirect('/all-form');

    }






//permet de verifier si l'form est connecté
    public function AdminAuthCheck()
    {
        $admin_id = Session::get('admin_id');
        if($admin_id){
            return;
        }else
        {
            Session::put('message', 'Vous devez etre connecté pour acceder à cette page ');
            return Redirect::to('/admin')
                ->send();

        }
    }
}

