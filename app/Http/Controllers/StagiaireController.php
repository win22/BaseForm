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
            ->where('of_certi',1)
            ->where('of_status', 1)
            ->get();

        $FORMT_spc = DB::table('tbl_organisme_formation')
            ->where('of_status', 1)
            ->where('name', Session::get('admin_structure') )
            ->get();

        $FORMT_all = DB::table('tbl_formations')
            ->get();

        $FORM_all = DB::table('tbl_formateurs')
            ->where('form_status', 1)
            ->where('form_certi',1)
            ->where('form_etat', 'agrée')
            ->get();

        $FORM = DB::table('tbl_formateurs')
            ->where('form_of', Session::get('admin_structure'))
            ->where('form_status', 1)
            ->where('form_certi',1)
            ->where('form_etat', 'agrée')
            ->get();

        $OF = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->where('of_certi', 1)
            ->get();
        return view('stagiaire.add_stag', ['OF' => $OF])
            ->with('OF_all', $OF_all)
            ->with('FORMT_all', $FORMT_all)
            ->with('FORM_all', $FORM_all)
            ->with('FORM', $FORM)
            ->with('FORMT_spc', $FORMT_spc);
    }


    public  function  search(Request $request)
    {
        $this->adminAuthCheck();
        $search = $request->get('search');
        $all_stag_info = DB::table('tbl_stagiaires')
            ->where('stag_name', 'like', '%'.$search.'%')
           ->where('stag_certi', 1)
            ->orderByDesc('stag_id')
            ->paginate(5);

        $nb= $all_stag_info->count();

        return view('stagiaire.all_stag', ['all_stag_info' => $all_stag_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchA()
    {
        $this->AdminAuthCheck();

        $all_stag_info = DB::table('tbl_stagiaires')
            ->where('stag_etat' , 'agrée')
            ->where('stag_certi' , '1')
            ->orderByDesc('stag_id')
            ->paginate(5);
        $nb= $all_stag_info->count();
        return view('stagiaire.all_stag', ['all_stag_info' => $all_stag_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchN()
    {
        $this->AdminAuthCheck();

        $all_stag_info = DB::table('tbl_stagiaires')
            ->where('stag_etat' , 'non')
            ->where('stag_certi' , '1')
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
            ->where('stag_certi' , 1)
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
            ->update(['stag_etat'=> 'certifie']);

        $data = DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->first();

        $test = array();
        $test['stag_email']= $data->stag_email;
        $test['stag_name']= $data->stag_name;
        $test['stag_formation']= $data->stag_formation;


        Mail::send('mail.mailStag', $test , function ($message) use ($test){
            $message->to($test['stag_email']);
            $message->from('mailtrapmail@gmail.com');
            $message->subject('Félicitaion !!! ');

        });
        Session::put('message', 'Un mail a été envoyé a '.$test['stag_name']);
        return back();

    }

    public  function  stag_unvalide($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_etat'=>'non certifie']);
        Session::put('message', 'Un apprenant  a été désactivé ');
        return back();
    }


    //activer le status
    public function unactive_stag($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_status'=>0]);
        Session::put('message', 'Un apprenant a été désactivé... ');
        return back();

    }

    //Desactiver le status
    public function active_stag($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_status'=>1]);
        Session::put('message', 'Un apprenant a été activé... ');
        return back();
    }


    //supprimer une formation
    public function delete_stag($stag_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->delete();
        Session::put('message', 'Cette formation  a été supprimée ');
        return back();
    }

    //supprimer un apprenant
    public function delete_stag2($stag_token)
    {
        $this->adminAuthCheck();
        DB::table('tbl_stagiaires')
            ->whereIn('stag_certi', [0,1,2,3,4,5])
            ->where('stag_token', $stag_token)
            ->delete();
        Session::put('message', 'Un apprenant a été supprimé ');
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
            'stag_formateur' => ['required', 'max:90'],
            'stag_date_debut' => ['required'],
            'stag_date_fin' => ['required'],

        ]);

        $data = array();
        $data['stag_id'] = $request->stag_id;
        $data['stag_email'] = $request->stag_email;
        $data['stag_name'] = ($request->stag_name);
        $data['stag_structure'] = $request->stag_structure;
        $data['stag_sexe'] = $request->stag_sexe;
        $data['stag_formateur'] = $request->stag_formateur;
        $data['stag_phone'] = $request->stag_phone;
        $data['stag_etat'] = $request->stag_etat;
        $data['stag_date_debut'] = $request->stag_date_debut;
        $data['stag_date_fin'] = $request->stag_date_fin;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_formation'] = $request->stag_formation;
        $data['stag_status'] = 0;
        $data['stag_certi'] =  1;
        $data['stag_token'] =  str_random(40);
        $data['stag_etat'] = $request->stag_etat;

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
        Session::put('message', "Vous avez ajouté l'apprenant  ".$data['stag_prenom']."  avec succès!");
        return redirect('/all-stag');



    }

    public function saveNewforma(Request $request)
    {
        $this->adminAuthCheck();
        request()->validate([
            'stag_certi' => ['required', 'max:90'],
            'stag_date_debut' => ['required'],
            'stag_date_fin' => ['required'],
        ]);

        $data = array();
        $data['stag_id'] = $request->stag_id;
        $data['stag_email'] = $request->stag_email;
        $data['stag_name'] = ($request->stag_name);
        $data['stag_structure'] = $request->stag_structure;
        $data['stag_sexe'] = $request->stag_sexe;
        $data['stag_formateur'] = $request->stag_formateur;
        $data['stag_phone'] = $request->stag_phone;
        $data['stag_etat'] = $request->stag_etat;
        $data['stag_date_debut'] = $request->stag_date_debut;
        $data['stag_date_fin'] = $request->stag_date_fin;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_formation'] = $request->stag_formation;
        $data['stag_status'] =  0;
        $data['stag_certi'] =   $request->stag_certi;
        $data['stag_token'] =  $request->stag_token;
        $data['stag_etat'] = $request->stag_etat;


        DB::table('tbl_stagiaires')->insert($data);
        Session::put('message', "Une nouvelle formation a été ajouté à l'apprenant ".$data['stag_prenom']);
        return redirect('/details-stag/'.$request->stag_token);



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

        $FORMT_spc = DB::table('tbl_organisme_formation')
            ->where('of_status', 1)
            ->where('name', Session::get('admin_structure') )
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
            ->with('FORMT_spc', $FORMT_spc)
            ->with('FORMT_all', $FORMT_all);


        return View('admin_layout')
            ->with('stagiaire.all_stag', $stag_info, $OF_all, $FORMT_all, $FORM, $FORM_all);
    }

    public function edit_stag2($stag_id)
    {
        $this->adminAuthCheck();
        $stag_info = DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->first();

        $FORMT_all = DB::table('tbl_formations')
            ->get();

        $FORM_all = DB::table('tbl_formateurs')
            ->get();

        $FORMT_spc = DB::table('tbl_organisme_formation')
            ->where('of_status', 1)
            ->where('name', Session::get('admin_structure') )
            ->get();

        $OF_all = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->get();

        $FORM = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->whereIn('of_certi', [1,2,3,4,5])
            ->get();


        $stag_info = view('stagiaire.edit_stag_of')->with('stag_info', $stag_info)
            ->with('OF_all', $OF_all)
            ->with('FORM_all', $FORM_all)
            ->with('FORM', $FORM)
            ->with('FORMT_spc', $FORMT_spc)
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
            'stag_date_debut' => ['required', 'max:90'],
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
        $data['stag_date_debut'] = $request->stag_date_debut;
        $data['stag_date_fin'] = $request->stag_date_fin;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_certi'] = 1;
        $data['stag_status'] = $request->stag_status;
        $data['stag_etat'] = $request->stag_etat;

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
        $data2['stag_name'] = $request->stag_name;
        $data2['stag_prenom'] = $request->stag_prenom;
        $data2['stag_email'] = $request->stag_email;
        $data2['stag_adresse'] = $request->stag_adresse;
        $data2['stag_phone'] = $request->stag_phone;
        $data2['stag_token'] = $request->stag_token;
        $data2['stag_structure'] = $request->stag_structure;
        $data2['stag_formateur'] = $request->stag_formateur;
        $data2['stag_sexe'] = $request->stag_sexe;

        DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->update($data);

        DB::table('tbl_stagiaires')
            ->whereIn('stag_certi', [2,3,4,5])
            ->where('stag_token', $request->stag_token )
            ->update($data2);

        Session::put('message', "l'apprenant  ".$data['stag_prenom']." a eté modifié avec succès !");
        return redirect('/all-stag');

    }

    public  function  update_stag2(Request $request, $stag_id)
    {
        $this->adminAuthCheck();
        request()->validate([
            'stag_formation' => ['required', 'max:90'],
            'stag_date_debut' => ['required', 'max:90'],
            'stag_date_fin' => ['required', 'max:90'],
            'stag_certi' => ['required', 'max:90'],

        ]);
        $data = array();
        $data['stag_id'] = $request->stag_id;
        $data['stag_email'] = $request->stag_email;
        $data['stag_name'] = ($request->stag_name);
        $data['stag_structure'] = $request->stag_structure;
        $data['stag_sexe'] = $request->stag_sexe;
        $data['stag_formateur'] = $request->stag_formateur;
        $data['stag_formation'] = $request->stag_formation;
        $data['stag_phone'] = $request->stag_phone;
        $data['stag_date_debut'] = $request->stag_date_debut;
        $data['stag_date_fin'] = $request->stag_date_fin;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_certi'] = $request->stag_certi;
        $data['stag_status'] = $request->stag_status;
        $data['stag_etat'] = $request->stag_etat;

        DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->update($data);

        Session::put('message', "Cette formation a été Modifiée avec succès ");
        return redirect('/details-stag/'.$request->stag_token);


    }



    public function detail_stag($stag_token)
    {
        $this->adminAuthCheck();
        $stag_info = DB::table('tbl_stagiaires')
            ->where('stag_token', $stag_token)
            ->first();

        $OF_all = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->get();

        $FORMT_all = DB::table('tbl_formations')
            ->get();
        $FORM = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->whereIn('of_certi', [1,2,3,4,5])
            ->get();
        $all_stag_info =  DB::table('tbl_stagiaires')
            ->where('stag_token', $stag_token)
            ->whereIn('stag_certi' , [2,3,4,5])
            ->orderByDesc('stag_id')
            ->paginate(5);
        $nb= $all_stag_info->count();

        $stag_info = view('stagiaire.details_stag')
            ->with('stag_info', $stag_info)
            ->with('FORMT_all', $FORMT_all)
            ->with('FORM', $FORM)
            ->with('OF_all', $OF_all)
            ->with('nb', $nb)
            ->with('all_stag_info', $all_stag_info);
        return View('admin_layout')
            ->with('stagiaire.details_stag', $stag_info, $OF_all, $FORM, $FORMT_all);
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
