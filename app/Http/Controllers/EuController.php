<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Illuminate\View\View;
use Session;
Use Mail;
use Excel;

session_start();
class EuController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();

        return view('eu.add_eu');

    }

    public  function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_eu_info = DB::table('tbl_entreprise_utilisatrices')
            ->where('name', 'like', '%'.$search.'%')
            ->orderByDesc('eu_id')
            ->paginate(5);
        $nb= $all_eu_info->count();
        return view('eu.all_eu', ['all_eu_info' => $all_eu_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchA()
    {
        $this->AdminAuthCheck();
        $all_eu_info = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_etat' , 'agrée')
            ->orderByDesc('eu_id')
            ->paginate(5);
        $nb= $all_eu_info->count();
        return view('eu.all_eu', ['all_eu_info' => $all_eu_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchN()
    {
        $this->AdminAuthCheck();
        $all_eu_info = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_etat' , 'Normal')
            ->orderByDesc('eu_id')
            ->paginate(5);
        $nb= $all_eu_info->count();
        return view('eu.all_eu', ['all_eu_info' => $all_eu_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchE()
    {
        $this->AdminAuthCheck();
        $all_eu_info = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_etat' , 'En démarche')
            ->orderByDesc('eu_id')
            ->paginate(5);
        $nb= $all_eu_info->count();
        return view('eu.all_eu', ['all_eu_info' => $all_eu_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des eus
    public function all_eu()
    {

        $this->AdminAuthCheck();
        $all_eu_info =  DB::table('tbl_entreprise_utilisatrices')
            ->orderByDesc('eu_id')
            ->paginate(5);
        $nb= $all_eu_info->count();

        return view('eu.all_eu', ['all_eu_info' => $all_eu_info ])
            ->with(['nb' => $nb]);

    }

    //activer le status
    public function unactive_eu($eu_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id',$eu_id)
            ->update(['eu_status'=>0]);
        Session::put('message', 'Une EU a été désactivé... ');
        return back();

    }

    //Desactiver le status
    public function active_eu($eu_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id',$eu_id)
            ->update(['eu_status'=>1]);
        Session::put('message', 'Une EU a été activé... ');
        return back();
    }


    //details eu
    public function detail_eu($eu_id)
    {
        $this->AdminAuthCheck();
        $eu_info = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id', $eu_id)
            ->first();

        $eu_info = view('eu.details_eu')->with('eu_info', $eu_info);
        return View('admin_layout')
            ->with('eu.details_eu', $eu_info);
    }

    //supprimer Une Entreprise Utilisatrice
    public function delete_eu($eu_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id',$eu_id)
            ->delete();
        Session::put('message', 'Cette entreprise utilisatrice a été supprimé... ');
        return back();
    }

    //ajouter un eu
    public function save_eu(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'eu_adresse' => ['required'],
            'name' => ['required'],
            'eu_email' => ['required','unique:tbl_entreprise_utilisatrices', 'email'],
            'eu_secteurA' => ['required'],
            'eu_phone' => ['required'],
            'eu_etat' => ['required'],
            'eu_date_ad' => ['required'],
            'eu_nameDi' => ['required'],
            'eu_contactDe' => ['required'],
            'eu_efectif' => ['required'],
        ]);
        if($request->eu_etat == 'agrée')
        {
            request()->validate([
                'eu_date_debut' => ['required'],
                'eu_date_fin' => ['required'],
                'eu_time' => ['required'],
            ]);

        }

        $data = array();
        $data['eu_id'] = $request->eu_id;
        $data['name'] = $request->name;
        $data['eu_email'] = $request->eu_email;
        $data['eu_adresse'] = $request->eu_adresse;
        $data['eu_phone'] = $request->eu_phone;
        $data['eu_efectif'] = $request->eu_efectif;
        $data['eu_date_ad'] = $request->eu_date_ad;

        $data['eu_etat'] = $request->eu_etat;
        if($request->eu_etat == 'agrée')
        {
            $data['eu_date_fin'] = $request->eu_date_fin;
            $data['eu_date_debut'] = $request->eu_date_debut;
            $data['eu_time'] = $request->eu_time;
        }
        else{
            $data['eu_date_fin'] = null;
            $data['eu_date_debut'] = null;
            $data['eu_time'] = null;
        }

        $data['eu_secteurA'] = $request->eu_secteurA;
        $data['eu_contactDe'] = $request->eu_contactDe;
        $data['eu_nameDi'] = $request->eu_nameDi;
        $data['user_role'] = 1;
        $data['eu_status'] = 0;

        DB::table('tbl_entreprise_utilisatrices')->insert($data);
        Session::put('message', "Vous avez ajouté une nouvelle entreprise utilisatrice !");
        return redirect('/all-eu');




    }


    //selectionner un eu
    public function edit_eu($eu_id)
    {
        $this->AdminAuthCheck();
        $eu_info = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id', $eu_id)
            ->first();
        $ei_all = DB::table('tbl_entreprise_intervenantes')
            ->where('ei_status', 1)
            ->get();

        $eu_info = view('eu.edit_eu')
            ->with('eu_info', $eu_info)
            ->with('ei_all', $ei_all);
        return View('admin_layout')
            ->with('eu.all_eu', $eu_info, $ei_all);

    }

    public  function  update_eu(Request $request, $eu_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'eu_adresse' => ['required'],
            'name' => ['required'],
            'eu_email' => ['required', 'email'],
            'eu_secteurA' => ['required'],
            'eu_phone' => ['required'],
            'eu_etat' => ['required'],
            'eu_date_ad' => ['required'],
            'eu_nameDi' => ['required'],
            'eu_contactDe' => ['required'],
            'eu_efectif' => ['required'],
        ]);
        if($request->eu_etat == 'agrée')
        {
            request()->validate([
                'eu_date_debut' => ['required'],
                'eu_date_fin' => ['required'],
                'eu_time' => ['required'],
            ]);

        }

        $data = array();
        $data['eu_id'] = $request->eu_id;
        $data['name'] = $request->name;
        $data['eu_email'] = $request->eu_email;
        $data['eu_adresse'] = $request->eu_adresse;
        $data['eu_phone'] = $request->eu_phone;
        $data['eu_efectif'] = $request->eu_efectif;
        $data['eu_date_ad'] = $request->eu_date_ad;
        $data['eu_etat'] = $request->eu_etat;
        if($request->eu_etat == 'agrée')
        {
            $data['eu_date_fin'] = $request->eu_date_fin;
            $data['eu_date_debut'] = $request->eu_date_debut;
            $data['eu_time'] = $request->eu_time;
        }
        else{
            $data['eu_date_fin'] = null;
            $data['eu_date_debut'] = null;
            $data['eu_time'] = null;
        }

        $data['eu_secteurA'] = $request->eu_secteurA;
        $data['eu_contactDe'] = $request->eu_contactDe;
        $data['eu_nameDi'] = $request->eu_nameDi;
        $data['user_role'] = 1;

        DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id', $eu_id)
            ->update($data);

        Session::put('message', "l'EU ".$data['name']." a eté modifié avec Succes !");
        return redirect('/all-eu');


    }

    //Extraire les données vers excel
    public  function excel()
    {
        $data = DB::table('tbl_entreprise_utilisatrices')
            ->orderByDesc('eu_id')
            ->get()
            ->toArray();
        $data_array[] = array("Nom de l'entreprise ", 'Adresse',
            'Email', 'Téléphone', "Secteur d'Activité", "Contact pour la demande","Nom du Directeur",
            'Effectif', "Date d'adhesion",
            'Durée', 'Etat', 'Début de la certification', "Fin de la certification", 'Status' );

        foreach ( $data as $da)
        {
            $data_array[] = array( "Nom de l'entreprise " => $da->name,
                'Adresse'  => $da->eu_adresse,
                'Email'  => $da->eu_email,
                'Téléphone'  => $da->eu_phone,
                "Secteur d'Activité"  => $da->eu_secteurA,
                'Contact pour la demande' => $da->eu_contactDe,
                'Nom du Directeur' => $da->eu_nameDi,
                'Effectif' => $da->eu_efectif,
                "Date d'adhesion"  => $da->eu_date_ad ,
                'Durée '  => $da->eu_time ,
                "Etat"  => $da->eu_etat ,
                'Début de la certification'  => $da->eu_date_debut ,
                'Fin de la certification'  => $da->eu_date_fin,
                'Status'  => $da->eu_status);
        }
        Excel::create('Entreprises_Utilisatrices', function ($excel)use ($data_array)
        {
            $excel->setTitle('Entreprises_Utilisatrices');
            $excel->sheet('Entreprises_Utilisatrices',function ($sheet) use ($data_array){
                $sheet->fromArray($data_array, null, 'A1', false, false);
            });
        })->download('xls');

    }



//permet de verifier si l'eu est connecté
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
