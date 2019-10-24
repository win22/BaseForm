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
        return View('of.add_of');
    }

    public  function  search(Request $request)
    {
        $search = $request->get('search');
        $all_of_info = DB::table('tbl_of')
            ->where('of_raison', 'like', '%'.$search.'%')
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
        $all_of_info =  DB::table('tbl_of')
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
        DB::table('tbl_of')
            ->where('of_id',$of_id)
            ->update(['of_status'=>0]);
        Session::put('message', 'Un OF a été désactivé... ');
        return back();

    }

    //Modifier le status
    public function active_of($of_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_of')
            ->where('of_id',$of_id)
            ->update(['of_status'=>1]);
        Session::put('message', 'Un OF a été activé... ');
        return back();
    }

    //supprimer Un categeorie
    public function delete_of($of_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_of')
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
            'of_raison' => ['required'],
            'of_email' => ['required','unique:tbl_of'],
            'of_formation' => ['required'],
            'of_phone' => ['required'],
            'of_password' => ['required'],
            'of_status' => ['required'],

        ]);

        $this->AdminAuthCheck();
        $data = array();
        $data['of_id'] = $request->of_id;
        $data['of_raison'] = $request->of_raison;
        $data['of_email'] = $request->of_email;
        $data['of_adresse'] = $request->of_adresse;
        $data['of_phone'] = $request->of_phone;
        $data['of_password'] = $request->of_password;
        $data['of_formation'] = $request->of_formation;
        $data['of_status'] = $request->of_status;
        $data['token'] = str_random(30);

        Mail::send('mail.activationMaze', $data, function ($message) use ($data){
            $message->to($data['of_email']);
            $message->from('mazesenegal@gmail.com');
            $message->subject('Activation Votre Compte');
        });
        DB::table('tbl_of')->insert($data);
        Session::put('message', "Un mail a été envoyé a ".$data['of_raison']." !");
        return redirect('/all-of');

    }

    //Activer un Organisme
    public function userActivation($token)
    {
        $check = DB::table('tbl_of')
            ->where('token', $token)
            ->where('of_status',0)->first();
        if(!is_null($check)){
            DB::table('tbl_of')
                ->where('token',$token)
                ->update(['of_status'=>1]);
            return redirect('/');

        } elseif (['of_status'==1])
        {
            return Redirect::to('/of')
                ->withInput()->withErrors([
                    'of_raison' => "Vous avez déja activé votre Compte",

                ]);
        }
        else{
            return Redirect::to('/of')
                ->withInput()->withErrors([
                    'of_raison' => "Vous avez déja activé votre Compte",

                ]);
        }
    }


    //selectionner un OF
    public function edit_of($of_id)
    {
        $this->AdminAuthCheck();
        $of_info = DB::table('tbl_of')
            ->where('of_id', $of_id)
            ->first();

        $of_info = view('of.edit_of')->with('of_info', $of_info);
        return View('admin_layout')
            ->with('of.all_of', $of_info);

        //return View('of.edit_of');
    }

    public  function  update_of(Request $request, $of_id)
    {
        request()->validate([
            'of_adresse' => ['required'],
            'of_raison' => ['required'],
            'of_email' => ['required'],
            'of_formation' => ['required'],
            'of_phone' => ['required'],
            'of_password' => ['required'],
            'of_status' => ['required'],
        ]);

            $this->AdminAuthCheck();
            $data = array();
            $data['of_id'] = $request->of_id;
            $data['of_raison'] = $request->of_raison;
            $data['of_password'] = md5($request->of_password);
            $data['of_email'] = $request->of_email;
            $data['of_adresse'] = $request->of_adresse;
            $data['of_phone'] = $request->of_phone;
            $data['of_status'] = $request->of_status;
            DB::table('tbl_of')
                ->where('of_id', $of_id)
                ->update($data);

            Session::put('message', "l'OF ".$data['of_raison']." a eté modifié avec Succes !");
            return redirect('/all-of');




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
