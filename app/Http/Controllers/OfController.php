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
class OfController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        $OF = DB::table('tbl_formations')
            ->get();
        return View('of.add_of', ['OF'=> $OF]);
    }

    public  function  search(Request $request)
    {
        $search = $request->get('search');
        $all_of_info = DB::table('tbl_organisme_formation')
            ->where('name', 'like', '%'.$search.'%')
            ->orWhere('of_etat', 'like', '%'.$search.'%')
            ->orderByDesc('of_id')
            ->paginate(5);
        $nb= $all_of_info->count();
        return view('of.all_of', ['all_of_info' => $all_of_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des OFs
    public function all_of()
    {

        $this->AdminAuthCheck();
        $all_of_info =  DB::table('tbl_organisme_formation')
            ->orderByDesc('of_id')
            ->paginate(5);
        $nb= $all_of_info->count();

        return view('of.all_of', ['all_of_info' => $all_of_info ])
            ->with(['nb' => $nb]);

    }

    //Modifier le status
    public function unactive_of($of_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_organisme_formation')
            ->where('of_id',$of_id)
            ->update(['of_status'=>0]);
        Session::put('message', 'Un OF a été désactivé... ');
        return back();

    }

    //Modifier le status
    public function active_of($of_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_organisme_formation')
            ->where('of_id',$of_id)
            ->update(['of_status'=>1]);
        Session::put('message', 'Un OF a été activé... ');
        return back();
    }

    //supprimer Un categeorie
    public function delete_of($of_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_organisme_formation')
            ->where('of_id',$of_id)
            ->delete();
        Session::put('message', 'Un OF a été supprimé... ');
        return back();
    }

    //ajouter un OF
    public function save_of(Request $request)
    {
        request()->validate([
            'of_adresse' => ['required'],
            'name' => ['required'],
            'of_email' => ['required','unique:tbl_organisme_formation', 'email'],
            'of_formation' => ['required'],
            'of_etat' => ['required'],
            'of_phone' => ['required'],
            'of_date_ad' => ['required'],
        ]);
        if($request->of_etat == 'certifie')
        {
            request()->validate([
                'of_date_debut' => ['required'],
                'of_date_fin' => ['required'],
                'of_time' => ['required'],
            ]);

        }

        $this->AdminAuthCheck();
        $data = array();
        $data['of_id'] = $request->of_id;
        $data['name'] = $request->name;
        $data['of_email'] = $request->of_email;
        $data['of_adresse'] = $request->of_adresse;
        $data['of_phone'] = $request->of_phone;
        $data['of_etat'] = $request->of_etat;
        $data['of_time'] = $request->of_time;

        $data['of_date_debut'] = $request->of_date_debut;
        $data['of_date_ad'] = $request->of_date_ad;
        $data['of_date_fin'] = $request->of_date_fin;

        $data['of_formation'] = $request->of_formation;
        $data['of_status'] = 0;
        $data['user_role'] = $request->user_role;

        DB::table('tbl_organisme_formation')->insert($data);
        Session::put('message', "l'organisme ".$data['name']." a été ajouté avec succes");
        return redirect('/all-of');
        dump($data);

    }


    //selectionner un OF
    public function edit_of($of_id)
    {
        $this->AdminAuthCheck();
        $OF = DB::table('tbl_formations')
            ->get();

        $of_info = DB::table('tbl_organisme_formation')
            ->where('of_id', $of_id)
            ->first();

        $of_info = view('of.edit_of')
            ->with('of_info', $of_info)
            ->with('OF', $OF);
        return View('admin_layout')
            ->with('of.edit_of', $of_info)
            ->with('of.edit_of', $of_info);

        //return View('of.edit_of');
    }

    public  function  update_of(Request $request, $of_id)
    {
            request()->validate([
                'of_adresse' => ['required'],
                'name' => ['required'],
                'of_email' => ['required','email'],
                'of_formation' => ['required'],
                'of_etat' => ['required'],
                'of_phone' => ['required'],
                'of_date_ad' => ['required'],
            ]);
        if($request->of_etat == 'certifie')
        {
            request()->validate([
                'of_date_debut' => ['required'],
                'of_date_fin' => ['required'],
                'of_time' => ['required'],
            ]);

        }

        $this->AdminAuthCheck();
        $data = array();
        $data['of_id'] = $request->of_id;
        $data['name'] = $request->name;
        $data['of_email'] = $request->of_email;
        $data['of_adresse'] = $request->of_adresse;
        $data['of_phone'] = $request->of_phone;
        $data['of_etat'] = $request->of_etat;
        $data['of_time'] = $request->of_time;
        $data['of_date_debut'] = $request->of_date_debut;
        $data['of_date_ad'] = $request->of_date_ad;
        $data['of_date_fin'] = $request->of_date_fin;

        $data['of_formation'] = $request->of_formation;
        $data['user_role'] = $request->user_role;

        DB::table('tbl_organisme_formation')
                ->where('of_id', $of_id)
                ->update($data);

            Session::put('message', "l'OF ".$data['name']." a eté modifié avec Succes !");
            return redirect('/all-of');
        dump($data);

    }

    public function detail_of($of_id)
    {
        $this->AdminAuthCheck();
        $of_info = DB::table('tbl_organisme_formation')
            ->where('of_id', $of_id)
            ->first();

        $of_info = view('of.details_of')->with('of_info', $of_info);
        return View('admin_layout')
            ->with('of.details_of', $of_info);
    }

    //permet de verifier si l'OF est connecté
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
