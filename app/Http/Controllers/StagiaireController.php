<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Illuminate\View\View;
use Session;
Use Mail;
session_start();
class StagiaireController extends Controller
{
    public function index()
    {

        $this->adminAuthCheck();
        $OF_all = DB::table('tbl_organisme_formation')
            ->get();
        $FORMT_all = DB::table('tbl_formations')
            ->get();

        $FORM_all = DB::table('tbl_formateurs')
            ->get();

        $FORM = DB::table('tbl_formateurs')
            ->where('form_of', Session::get('admin_structure'))
            ->where('form_status', 1)
            ->get();

        $OF = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->get();
        return view('stagiaire.add_stag', ['OF' => $OF])
            ->with('OF_all', $OF_all)
            ->with('FORMT_all', $FORMT_all)
            ->with('FORM_all', $FORM_all)
            ->with('FORM', $FORM);
    }


    public  function  search(Request $request)
    {
        $this->adminAuthCheck();
        $search = $request->get('search');
        $all_stag_info = DB::table('tbl_stagiaires')
            ->where('stag_name', 'like', '%'.$search.'%')
            ->orWhere('stag_structure', 'like', '%'.$search.'%')
            ->orWhere('stag_validation', 'like', '%'.$search.'%')
            ->orWhere('stag_status', 'like', '%'.$search.'%')
            ->orderByDesc('stag_id')
            ->paginate(5);

        $nb= $all_stag_info->count();

        return view('stagiaire.all_stag', ['all_stag_info' => $all_stag_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des utilisateurs
    public function all_stag()
    {

        $this->adminAuthCheck();
        $all_stag_info =  DB::table('tbl_stagiaires')
            ->orderByDesc('stag_id')
            ->paginate(5);

        $nb= $all_stag_info->count();

        return view('stagiaire.all_stag', ['all_stag_info' => $all_stag_info ])
            ->with(['nb' => $nb]);

    }

    public function stag_valide($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_validation'=> 'certifie']);
        Session::put('message', 'Un stagiaire a été certifié Mase ');
        return back();
    }

    public  function  stag_unvalide($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_validation'=>'non certifie']);
        Session::put('message', 'Un stagiaire a été désactivé ');
        return back();
    }


    //activer le status
    public function unactive_stag($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_status'=>0]);
        Session::put('message', 'Un stagiaire a été désactivé... ');
        return back();

    }

    //Desactiver le status
    public function active_stag($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_status'=>1]);
        Session::put('message', 'Un stagiaire a été activé... ');
        return back();
    }


    //supprimer Un Stagiaire
    public function delete_stag($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->delete();
        Session::put('message', 'Un stagiaire a été supprimé... ');
        return back();
    }

    //ajouter un utilisateur
    public function save_stag(Request $request)
    {
        $this->adminAuthCheck();
        request()->validate([
            'stag_structure' => ['required','max:90'],
            'stag_email' => ['required', 'unique:tbl_stagiaires', 'max:190', 'email'],
            'stag_phone' => ['required', 'max:90'],
            'stag_prenom' => ['required', 'max:90'],
            'stag_name' => ['required', 'max:90'],
            'stag_sexe' => ['required', 'max:2'],
            'stag_adresse' => ['required', 'max:90'],
            'stag_formation' => ['required', 'max:90'],
            'stag_date_debu' => ['required', 'max:90'],
            'stag_date_fin' => ['required', 'max:90'],
            'stag_formateur' => ['required', 'max:90'],
            'stag_status' => ['required', 'max:2'],
        ]);
        $data = array();
        $data['stag_id'] = $request->stag_id;
        $data['stag_email'] = $request->stag_email;
        $data['stag_name'] = ($request->stag_name);
        $data['stag_structure'] = $request->stag_structure;
        $data['stag_sexe'] = $request->stag_sexe;
        $data['stag_formateur'] = $request->stag_formateur;
        $data['stag_phone'] = $request->stag_phone;
        $data['stag_date_debu'] = $request->stag_date_debu;
        $data['stag_date_fin'] = $request->stag_date_fin;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_formation'] = $request->stag_formation;
        $data['stag_status'] = $request->stag_status;
        $data['stag_validation'] = 'non certifie';

        $image = $request->file('stag_image');
        if ($image){
            request()->validate([
                'stag_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['stag_image'] = $image_url;
            }
        }

        DB::table('tbl_stagiaires')->insert($data);

        Session::put('message', "Un mail a été envoyé a ".$data['stag_prenom']." !");
        return redirect('/all-stag');
      //  dump($data);

    }


    //selectionner un utilisateur
    public function edit_stag($stag_id)
    {
        $this->adminAuthCheck();
        $stag_info = DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->first();

        $FORMT_all = DB::table('tbl_formations')
            ->get();

        $FORM_all = DB::table('tbl_formateurs')
            ->get();

        $OF_all = DB::table('tbl_organisme_formation')
            ->get();

        $FORM = DB::table('tbl_formateurs')
            ->where('form_of', Session::get('admin_structure'))
            ->where('form_status', 1)
            ->get();

        $stag_info = view('stagiaire.edit_stag')->with('stag_info', $stag_info)
            ->with('OF_all', $OF_all)
            ->with('FORM_all', $FORM_all)
            ->with('FORM', $FORM)
            ->with('FORMT_all', $FORMT_all);


        return View('admin_layout')
            ->with('stagiaire.all_stag', $stag_info, $OF_all, $FORMT_all, $FORM, $FORM_all);


    }

    public  function  update_stag(Request $request, $stag_id)
    {
        $this->adminAuthCheck();
        request()->validate([
            'stag_structure' => ['required','max:90'],
            'stag_email' => ['required', 'max:190', 'email'],
            'stag_phone' => ['required', 'max:90'],
            'stag_prenom' => ['required', 'max:90'],
            'stag_name' => ['required', 'max:90'],
            'stag_sexe' => ['required', 'max:2'],
            'stag_adresse' => ['required', 'max:90'],
            'stag_formation' => ['required', 'max:90'],
            'stag_date_debu' => ['required', 'max:90'],
            'stag_date_fin' => ['required', 'max:90'],
            'stag_formateur' => ['required', 'max:90'],

        ]);
        $data = array();
        $data['stag_id'] = $request->stag_id;
        $data['stag_email'] = $request->stag_email;
        $data['stag_name'] = ($request->stag_name);
        $data['stag_structure'] = $request->stag_structure;
        $data['stag_sexe'] = $request->stag_sexe;
        $data['stag_formateur'] = $request->stag_formateur;
        $data['stag_phone'] = $request->stag_phone;
        $data['stag_date_debu'] = $request->stag_date_debu;
        $data['stag_date_fin'] = $request->stag_date_fin;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_formation'] = $request->stag_formation;

        $image = $request->file('stag_image');
        if ($image){
            request()->validate([
                'stag_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['stag_image'] = $image_url;
            }
        }
        DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->update($data);
        Session::put('message', "le stagiaire  ".$data['stag_prenom']." a eté modifié avec Succes !");
        return redirect('/all-stag');


    }



    public function detail_stag($stag_id)
    {
        $this->adminAuthCheck();
        $stag_info = DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->first();

        $stag_info = view('stagiaire.details_stag')->with('stag_info', $stag_info);
        return View('admin_layout')
            ->with('stagiaire.details_stag', $stag_info);
    }

    //permet de verifier si l'utilisateur est connecté
    public function adminAuthCheck()
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
