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
        $OF_all = DB::table('tbl_organisme_formation')
            ->get();

        $OF = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->get();
        return view('formateur.add_fo', ['OF' => $OF])
            ->with('OF_all', $OF_all);
    }

    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_form_info = DB::table('tbl_formateurs')
            ->where('form_name', 'like', '%'.$search.'%')
            ->orWhere('form_etat', 'like', '%'.$search.'%')
            ->orWhere('form_of', 'like', '%'.$search.'%')
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


    //Modifier le status
    public function unactive_form($form_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->update(['form_status'=>0]);
        Session::put('message', 'Un formateur a été désactivé... ');
        return back();

    }

    //Modifier le status
    public function active_form($form_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->update(['form_status'=>1]);
        Session::put('message', 'Un formateur a été activé... ');
        return back();
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
            'form_name' => ['required', 'max: 60'],
            'form_prenom' => ['required','max: 60'],
            'form_adresse' => ['required', 'max: 60'],
            'form_sexe' => ['required','max: 1'],
            'form_email' => ['required', 'unique:tbl_formateurs', 'email', 'max: 191'],
            'form_phone' => ['required','max: 60'],
            'form_etat' => ['required', 'max: 10'],
            'form_of' => [ 'max: 60'],
        ]);
        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_adresse'] = $request->form_adresse;
        $data['form_email'] = $request->form_email;
        $data['form_phone'] = $request->form_phone;
        $data['form_etat'] = $request->form_etat;
        $data['form_sexe'] = $request->form_sexe;
        $data['form_of'] = $request->form_of;
        $data['form_status'] = $request->form_status;

        DB::table('tbl_formateurs')->insert($data);
        Session::put('message', "le formateur " . $data['form_name'] . " a été crée avec succès !");
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

        $OF_all = DB::table('tbl_organisme_formation')
            ->get();


        $form_info = view('formateur.edit_fo')
            ->with('form_info', $form_info)
            ->with('OF_all', $OF_all);
        return View('admin_layout')
            ->with('formateur.all_fo', $form_info, $OF_all);

    }

    public  function  update_form(Request $request, $form_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'form_name' => ['required', 'max: 60'],
            'form_prenom' => ['required','max: 60'],
            'form_adresse' => ['required', 'max: 60'],
            'form_sexe' => ['required','max: 1'],
            'form_email' => ['required', 'email', 'max: 191'],
            'form_phone' => ['required','max: 60'],
            'form_etat' => ['required', 'max: 10'],
            'form_of' => [ 'max: 60'],
        ]);
        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_adresse'] = $request->form_adresse;
        $data['form_email'] = $request->form_email;
        $data['form_phone'] = $request->form_phone;
        $data['form_etat'] = $request->form_etat;
        $data['form_sexe'] = $request->form_sexe;
        $data['form_of'] = $request->form_of;
        $data['form_status'] = $request->form_status;

        DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->update($data);
        Session::put('message', " ".$data['form_name']." a eté modifié avec Succes !");
        return redirect('/all-form');


    }



    public function detail_form($form_id)
    {
        $this->AdminAuthCheck();
        $form_info = DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->first();

        $form_info = view('formateur.details_fo')->with('form_info', $form_info);
        return View('admin_layout')
            ->with('formateur.details_fo', $form_info);
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

