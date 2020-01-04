<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
Use Mail;
session_start();
class EiController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        $eu_all = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_status', 1)
            ->get();

        return view('ei.add_ei')
            ->with('eu_all', $eu_all);
    }

    //methode pour la recherche
    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_ei_info = DB::table('tbl_entreprise_intervenantes')
            ->where('name', 'like', '%'.$search.'%')
            ->orWhere('ei_eu', 'like', '%'.$search.'%')
            ->orderByDesc('ei_id')
            ->paginate(5);
        $nb= $all_ei_info->count();
        return view('ei.all_ei', ['all_ei_info' => $all_ei_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchN()
    {
        $this->AdminAuthCheck();
        $all_ei_info = DB::table('tbl_entreprise_intervenantes')
            ->where('ei_etat' , 'En démarche')
            ->orderByDesc('ei_id')
            ->paginate(5);
        $nb= $all_ei_info->count();
        return view('ei.all_ei', ['all_ei_info' => $all_ei_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchE()
    {
        $this->AdminAuthCheck();
        $all_ei_info = DB::table('tbl_entreprise_intervenantes')
            ->where('ei_etat' , 'agrée')
            ->orderByDesc('ei_id')
            ->paginate(5);
        $nb= $all_ei_info->count();
        return view('ei.all_ei', ['all_ei_info' => $all_ei_info ])
            ->with(['nb' => $nb]);
    }


    //afficher une entreprise intervenante
    public function all_ei()
    {

        $this->AdminAuthCheck();
        $all_ei_info =  DB::table('tbl_entreprise_intervenantes')
            ->orderByDesc('ei_id')
            ->paginate(5);
        $nb= $all_ei_info->count();

        return view('ei.all_ei', ['all_ei_info' => $all_ei_info ])
            ->with(['nb' => $nb]);

    }

    //Modifier une entreprise intervenante
    public function unactive_ei($ei_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_entreprise_intervenantes')
            ->where('ei_id',$ei_id)
            ->update(['ei_status'=>0]);
        Session::put('message', 'Une entreprise Intervenante a été désactivé... ');
        return back();

    }

    //Modifier une entreprise intervenante
    public function active_ei($ei_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_entreprise_intervenantes')
            ->where('ei_id',$ei_id)
            ->update(['ei_status'=>1]);
        Session::put('message', 'Une entreprise Intervenante a été activé... ');
        return back();
    }

    //supprimer une entreprise intervenante
    public function delete_ei($ei_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_entreprise_intervenantes')
            ->where('ei_id',$ei_id)
            ->delete();
        Session::put('message', 'Cette entreprise Intervenante a été supprimé... ');
        return back();
    }


    //ajouter une entreprise intervenante
    public function save_ei(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'ei_adresse' => ['required'],
            'name' => ['required'],
            'ei_email' => ['required','unique:tbl_entreprise_intervenantes', 'email'],
            'ei_secteurA' => ['required'],
            'ei_phone' => ['required'],
            'ei_etat' => ['required'],
            'ei_date_ad' => ['required'],
            'ei_nameDi' => ['required'],
        ]);
        if($request->ei_etat == 'agrée')
        {
            request()->validate([
                'ei_date_debut' => ['required'],
                'ei_date_fin' => ['required'],
                'ei_time' => ['required'],
            ]);

        }

        $data = array();
        $data['ei_id'] = $request->ei_id;
        $data['name'] = $request->name;
        $data['ei_email'] = $request->ei_email;
        $data['ei_adresse'] = $request->ei_adresse;
        $data['ei_phone'] = $request->ei_phone;
        $data['ei_secteurA'] = $request->ei_secteurA;
        $data['ei_nameDi'] = $request->ei_nameDi;
        $data['ei_date_ad'] = $request->ei_date_ad;
        $data['ei_eu'] = $request->ei_eu;
        $data['ei_a_eu'] = $request->ei_a_eu;
        $data['user_role'] = 2;
        $data['ei_status'] = 0;

        $data['ei_etat'] = $request->ei_etat;
        if($request->ei_etat == 'agrée')
        {
            $data['ei_date_fin'] = $request->ei_date_fin;
            $data['ei_date_debut'] = $request->ei_date_debut;
            $data['ei_time'] = $request->ei_time;
        }else
        {
            $data['ei_date_fin'] = null;
            $data['ei_date_debut'] = null;
            $data['ei_time'] = null;
        }

        DB::table('tbl_entreprise_intervenantes')->insert($data);
        Session::put('message', "Un mail a été envoyé ".$data['name']." !");
        return redirect('/all-ei');

    }



    //selectionner un ei
    public function edit_ei($ei_id)
    {
        $this->AdminAuthCheck();
        $ei_info = DB::table('tbl_entreprise_intervenantes')
            ->where('ei_id', $ei_id)
            ->first();
        $eu_all = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_status', 1)
            ->get();

        $ei_info = view('ei.edit_ei')
            ->with('ei_info', $ei_info)
            ->with('eu_all', $eu_all);
        return View('admin_layout')
            ->with('ei.all_ei', $ei_info, $eu_all);

    }

    //methode pour la modification
    public  function  update_ei(Request $request, $ei_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'ei_adresse' => ['required'],
            'name' => ['required'],
            'ei_email' => ['required', 'email'],
            'ei_secteurA' => ['required'],
            'ei_phone' => ['required'],
            'ei_etat' => ['required'],
            'ei_date_ad' => ['required'],
            'ei_nameDi' => ['required'],
        ]);
        if($request->ei_etat == 'agrée')
        {
            request()->validate([
                'ei_date_debut' => ['required'],
                'ei_date_fin' => ['required'],
                'ei_time' => ['required'],
            ]);

        }

        $data['ei_id'] = $request->ei_id;
        $data['name'] = $request->name;
        $data['ei_email'] = $request->ei_email;
        $data['ei_adresse'] = $request->ei_adresse;
        $data['ei_phone'] = $request->ei_phone;
        $data['ei_secteurA'] = $request->ei_secteurA;
        $data['ei_nameDi'] = $request->ei_nameDi;
        $data['ei_date_ad'] = $request->ei_date_ad;
        $data['ei_eu'] = $request->ei_eu;
        $data['ei_a_eu'] = $request->ei_a_eu;
        $data['user_role'] = 2;
        $data['ei_etat'] = $request->ei_etat;
        if($request->ei_etat == 'agrée')
        {
            $data['ei_date_fin'] = $request->ei_date_fin;
            $data['ei_date_debut'] = $request->ei_date_debut;
            $data['ei_time'] = $request->ei_time;
        }else
        {
            $data['ei_date_fin'] = null;
            $data['ei_date_debut'] = null;
            $data['ei_time'] = null;
        }

        DB::table('tbl_entreprise_intervenantes')
            ->where('ei_id', $ei_id)
            ->update($data);
        Session::put('message', "l'entreprise ".$data['name']." a eté modifié avec Succes !");
        return redirect('/all-ei');

    }




    public function detail_ei($ei_id)
    {
        $this->AdminAuthCheck();
        $ei_info = DB::table('tbl_entreprise_intervenantes')
            ->where('ei_id', $ei_id)
            ->first();

        $ei_info = view('ei.details_ei')->with('ei_info', $ei_info);
        return View('admin_layout')
            ->with('ei.details_ei', $ei_info);
    }


//permet de verifier si l'ei est connecté
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
