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
class AdminController extends Controller
{

    public function index()
    {
        return view('admin.add_admin');
    }

    public  function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_admin_info = DB::table('tbl_admin')
                ->where('admin_structure', 'like', '%'.$search.'%')
                ->orderByDesc('admin_id')
                ->paginate(2);
        $nb= $all_admin_info->count();
        return view('admin.all_admin', ['all_admin_info' => $all_admin_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des utilisateurs
    public function all_admin()
    {

        $this->AdminAuthCheck();
        $all_admin_info =  DB::table('tbl_admin')
            ->orderByDesc('admin_id')
            ->paginate(2);
        $nb= $all_admin_info->count();

        return view('admin.all_admin', ['all_admin_info' => $all_admin_info ])
            ->with(['nb' => $nb]);

    }


    //Modifier le status
    public function unactive_admin($admin_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_admin')
            ->where('admin_id',$admin_id)
            ->update(['admin_status'=>0]);
        Session::put('message', 'Un Utilisateur a été désactivé... ');
        return back();

    }

    //Modifier le status
    public function active_admin($admin_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_admin')
            ->where('admin_id',$admin_id)
            ->update(['admin_status'=>1]);
        Session::put('message', 'Un Utilisateur a été activé... ');
        return back();
    }

    //supprimer Un categeorie
    public function delete_admin($admin_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_admin')
            ->where('admin_id',$admin_id)
            ->delete();
        Session::put('message', 'Un Utilisateur a été supprimé... ');
        return back();
    }

    //ajouter un utilisateur
    public function save_admin(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'admin_structure' => ['required'],
            'admin_email' => ['required', 'unique:tbl_admin'],
            'admin_role' => ['required'],
            'admin_structure' => ['required'],
            'admin_phone' => ['required'],
            'admin_password' => ['required'],
        ]);
        $data = array();
        $data['admin_id'] = $request->admin_id;
        $data['admin_email'] = $request->admin_email;
        $data['admin_password'] = md5($request->admin_password);
        $data['admin_role'] = $request->admin_role;
        $data['admin_structure'] = $request->admin_structure;
        $data['admin_phone'] = $request->admin_phone;
        $data['admin_status'] = $request->admin_status;
        $data['token'] = str_random(30);
        $image = $request->file('admin_image');
        if ($image){
            request()->validate([
                'admin_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['admin_image'] = $image_url;
            }
        }
        Mail::send('mail.activation', $data, function ($message) use ($data){
            $message->to($data['admin_email']);
            $message->from('mailtrapmail@gmail.com');
            $message->subject('Activation Votre Compte');
        });
        DB::table('tbl_admin')->insert($data);
          Session::put('message', "Un mail a été envoyé a ".$data['admin_structure']." !");
          return redirect('/all-admin');

    }

    //Activer un Compte
    public function userActivation($token)
    {
        $this->AdminAuthCheck();
        $check = DB::table('tbl_admin')
            ->where('token', $token)
            ->where('admin_status',0)->first();
        if(!is_null($check)){
          DB::table('tbl_admin')
                ->where('token',$token)
                ->update(['admin_status'=>1]);
            return redirect('/');

        } elseif (['admin_status'==1])
        {
            return Redirect::to('/admin')
                ->withInput()->withErrors([
                    'admin_email' => "Vous avez déja activé votre Compte",

                ]);
        }
        else{
            return Redirect::to('/admin')
                ->withInput()->withErrors([
                    'admin_email' => "Vous avez déja activé votre Compte",

                ]);
        }
    }


    //selectionner un utilisateur
    public function edit_admin($admin_id)
    {
        $this->AdminAuthCheck();
        $admin_info = DB::table('tbl_admin')
            ->where('admin_id', $admin_id)
            ->first();

        $admin_info = view('admin.edit_admin')->with('admin_info', $admin_info);
        return View('admin_layout')
            ->with('admin.all_admin', $admin_info);

        //return View('admin.edit_admin');
    }

    public  function  update_admin(Request $request, $admin_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'admin_structure' => ['required'],
            'admin_email' => ['required'],
            'admin_role' => ['required'],
            'admin_structure' => ['required'],
            'admin_phone' => ['required'],
            'admin_password' => ['required'],
        ]);
        $data = array();
        $data['admin_id'] = $request->admin_id;
        $data['admin_email'] = $request->admin_email;
        $data['admin_password'] = md5($request->admin_password);
        $data['admin_role'] = $request->admin_role;
        $data['admin_structure'] = $request->admin_structure;
        $data['admin_phone'] = $request->admin_phone;
        $data['admin_status'] = $request->admin_status;
        $image = $request->file('admin_image');
        if ($image){
            request()->validate([
                'admin_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['admin_image'] = $image_url;
            }
        }
        DB::table('tbl_admin')
            ->where('admin_id', $admin_id)
            ->update($data);
        Session::put('message', "l'utilisateur ".$data['admin_structure']." a eté modifié avec Succes !");
        return redirect('/all-admin');


    }


    public function admin_edit_pro( $admin_id)
    {
        $this->AdminAuthCheck();
        $admin_info = DB::table('tbl_admin')
            ->where('admin_id', $admin_id)
            ->first();

        $admin_info = view('admin.admin_profil')->with('admin_info', $admin_info);
        return View('admin_layout')
            ->with('admin.all_admin', $admin_info);

    }


    public function update_pass(Request $request, $admin_id)
    {
        request() -> validate([
            'password' => ['required', 'confirmed', 'min:8'],
            'password_confirmation' => ['required'],
        ]);
        $data = array();
        $data['admin_id'] = $request->admin_id;
        $data['admin_password'] = md5($request->password);
        DB::table('tbl_admin')
            ->where('admin_id', $admin_id)
            ->update($data);
        Session::put('message', "Vous avez modifié  votre mot de passe avec Succes !");
        return redirect('/all-admin');
    }

    //permet de verifier si l'utilisateur est connecté
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
