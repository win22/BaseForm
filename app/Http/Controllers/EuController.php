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
            'eu_email' => ['required','unique:tbl_entreprise_utilisatrices'],
            'eu_secteurA' => ['required'],
            'eu_phone' => ['required'],
            'eu_nameDi' => ['required'],
            'eu_contactDe' => ['required'],
            'eu_efectif' => ['required'],
        ]);

        $data = array();
        $data['eu_id'] = $request->eu_id;
        $data['name'] = $request->name;
        $data['eu_email'] = $request->eu_email;
        $data['eu_adresse'] = $request->eu_adresse;
        $data['eu_phone'] = $request->eu_phone;
        $data['eu_efectif'] = $request->eu_efectif;
        $data['eu_secteurA'] = $request->eu_secteurA;
        $data['eu_contactDe'] = $request->eu_contactDe;
        $data['eu_nameDi'] = $request->eu_nameDi;
        $data['user_role'] = $request->user_role;

        Mail::send('mail.activationEU', $data, function ($message) use ($data){
            $message->to($data['eu_email']);
            $message->from('mazesenegal@gmail.com');
            $message->subject('Activation Votre Compte');
        });
        DB::table('tbl_entreprise_utilisatrices')->insert($data);
        Session::put('message', "Un mail a été envoyé a ".$data['name']." !");
        return redirect('/all-eu');

    }


    //selectionner un eu
    public function edit_eu($eu_id)
    {
        $this->AdminAuthCheck();
        $eu_info = DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id', $eu_id)
            ->first();

        $eu_info = view('eu.edit_eu')->with('eu_info', $eu_info);
        return View('admin_layout')
            ->with('eu.all_eu', $eu_info);

    }

    public  function  update_eu(Request $request, $eu_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'eu_adresse' => ['required'],
            'name' => ['required'],
            'eu_email' => ['required'],
            'eu_secteurA' => ['required'],
            'eu_phone' => ['required'],
            'eu_nameDi' => ['required'],
            'eu_contactDe' => ['required'],
            'eu_efectif' => ['required'],
        ]);

        $data = array();
        $data['eu_id'] = $request->eu_id;
        $data['name'] = $request->name;
        $data['eu_email'] = $request->eu_email;
        $data['eu_adresse'] = $request->eu_adresse;
        $data['eu_phone'] = $request->eu_phone;
        $data['eu_efectif'] = $request->eu_efectif;
        $data['eu_secteurA'] = $request->eu_secteurA;
        $data['eu_contactDe'] = $request->eu_contactDe;
        $data['eu_nameDi'] = $request->eu_nameDi;
        DB::table('tbl_entreprise_utilisatrices')
            ->where('eu_id', $eu_id)
            ->update($data);

        Session::put('message', "l'eu ".$data['name']." a eté modifié avec Succes !");
        return redirect('/all-eu');
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
