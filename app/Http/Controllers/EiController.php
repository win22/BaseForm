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
        return view('ei.add_ei');
    }

    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_ei_info = DB::table('tbl_ei')
            ->where('ei_name', 'like', '%'.$search.'%')
            ->orderByDesc('ei_id')
            ->paginate(5);
        $nb= $all_ei_info->count();
        return view('ei.all_ei', ['all_ei_info' => $all_ei_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des ei
    public function all_ei()
    {

        $this->AdminAuthCheck();
        $all_ei_info =  DB::table('tbl_ei')
            ->orderByDesc('ei_id')
            ->paginate(5);
        $nb= $all_ei_info->count();

        return view('ei.all_ei', ['all_ei_info' => $all_ei_info ])
            ->with(['nb' => $nb]);

    }

    //Modifier le status
    public function unactive_ei($ei_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_ei')
            ->where('ei_id',$ei_id)
            ->update(['ei_status'=>0]);
        Session::put('message', 'Une entreprise Intervenante a été désactivé... ');
        return back();

    }

    //Modifier le chiffreA
    public function active_ei($ei_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_ei')
            ->where('ei_id',$ei_id)
            ->update(['ei_status'=>1]);
        Session::put('message', 'Une entreprise Intervenante a été activé... ');
        return back();
    }

    //supprimer Un categeorie
    public function delete_ei($ei_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_ei')
            ->where('ei_id',$ei_id)
            ->delete();
        Session::put('message', 'Cette entreprise Intervenante a été supprimé... ');
        return back();
    }

    //ajouter un ei
    public function save_ei(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'ei_adresse' => ['required'],
            'ei_name' => ['required'],
            'ei_email' => ['required','unique:tbl_ei'],
            'ei_secteurA' => ['required'],
            'ei_phone' => ['required'],
            'ei_nameDi' => ['required'],
            'ei_eu' => ['required'],
            'psw' => ['required'],
            'ei_status' => ['required'],
        ]);
        $data = array();
        $data['ei_id'] = $request->ei_id;
        $data['ei_name'] = $request->ei_name;
        $data['ei_email'] = $request->ei_email;
        $data['ei_adresse'] = $request->ei_adresse;
        $data['ei_phone'] = $request->ei_phone;
        $data['ei_secteurA'] = $request->ei_secteurA;
        $data['ei_nameDi'] = $request->ei_nameDi;
        $data['ei_eu'] = $request->ei_eu;
        $data['psw'] = $request->psw;
        $data['ei_status'] = $request->ei_status;
        $data['token'] = str_random(30);

        Mail::send('mail.activationEi', $data, function ($message) use ($data){
            $message->to($data['ei_email']);
            $message->from('mazesenegal@gmail.com');
            $message->subject('Activation Votre Compte');
        });
        DB::table('tbl_ei')->insert($data);
        Session::put('message', "Un mail a été envoyé a ".$data['ei_name']." !");
        return redirect('/all-ei');

    }

    //Activer un Organisme
    public function userActivation($token)
    {
        $this->AdminAuthCheck();
        $check = DB::table('tbl_ei')
            ->where('token', $token)
            ->where('ei_chiffreA',0)->first();
        if(!is_null($check)){
            DB::table('tbl_ei')
                ->where('token',$token)
                ->update(['ei_chiffreA'=>1]);
            return redirect('/');

        } elseif (['ei_chiffreA'==1])
        {
            return Redirect::to('/ei')
                ->withInput()->withErrors([
                    'ei_name' => "Vous avez déja activé votre Compte",

                ]);
        }
        else{
            return Redirect::to('/ei')
                ->withInput()->withErrors([
                    'ei_name' => "Vous avez déja activé votre Compte",

                ]);
        }
    }


    //selectionner un ei
    public function edit_ei($ei_id)
    {
        $this->AdminAuthCheck();
        $ei_info = DB::table('tbl_ei')
            ->where('ei_id', $ei_id)
            ->first();

        $ei_info = view('ei.edit_ei')->with('ei_info', $ei_info);
        return View('admin_layout')
            ->with('ei.all_ei', $ei_info);

    }

    public  function  update_ei(Request $request, $ei_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'ei_adresse' => ['required'],
            'ei_name' => ['required'],
            'ei_email' => ['required'],
            'ei_secteurA' => ['required'],
            'ei_phone' => ['required'],
            'ei_nameDi' => ['required'],
            'ei_eu' => ['required'],
            'psw' => ['required'],
            'ei_status' => ['required'],
        ]);
        $data = array();
        $data['ei_id'] = $request->ei_id;
        $data['ei_name'] = $request->ei_name;
        $data['ei_email'] = $request->ei_email;
        $data['ei_adresse'] = $request->ei_adresse;
        $data['ei_phone'] = $request->ei_phone;
        $data['ei_secteurA'] = $request->ei_secteurA;
        $data['ei_nameDi'] = $request->ei_nameDi;
        $data['ei_eu'] = $request->ei_eu;
        $data['psw'] = $request->psw;
        $data['ei_status'] = $request->ei_status;
        DB::table('tbl_ei')
            ->where('ei_id', $ei_id)
            ->update($data);
        Session::put('message', " ".$data['ei_name']." a eté modifié avec Succes !");
        return redirect('/all-ei');
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
