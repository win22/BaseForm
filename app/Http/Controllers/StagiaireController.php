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

        $OF_all = DB::table('tbl_organisme_formation')
            ->get();

        $OF = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->get();
        return view('stagiaire.add_stag', ['OF' => $OF])
            ->with('OF_all', $OF_all);
    }


    public  function  search(Request $request)
    {
        $this->stagAuthCheck();
        $search = $request->get('search');
        $all_stag_info = DB::table('tbl_stagiaires')
            ->where('stag_name', 'like', '%'.$search.'%')
            ->orderByDesc('stag_id')
            ->paginate(5);

        $all_stag_info1 =  DB::table('tbl_stagiaires')
            ->where('stag_structure', Session::get('admin_structure'))
            ->where('stag_name', 'like', '%'.$search.'%')
            ->orderByDesc('stag_id')
            ->paginate(5);

        $nb= $all_stag_info->count();
        $nb1= $all_stag_info1->count();

        return view('stagiaire.all_stag', ['all_stag_info' => $all_stag_info ])
            ->with(['nb' => $nb])
            ->with(['nb1' => $nb1])
            ->with(['all_stag_info1' => $all_stag_info1]);
    }

    //afficher la liste des utilisateurs
    public function all_stag()
    {

        $this->stagAuthCheck();
        $all_stag_info =  DB::table('tbl_stagiaires')
            ->orderByDesc('stag_id')
            ->paginate(5);

        $all_stag_info1 =  DB::table('tbl_stagiaires')
            ->where('stag_structure', Session::get('admin_structure'))
            ->orderByDesc('stag_id')
            ->paginate(5);

        $nb= $all_stag_info->count();
        $nb1= $all_stag_info1->count();

        return view('stagiaire.all_stag', ['all_stag_info' => $all_stag_info ])
            ->with(['nb' => $nb])
            ->with(['nb1' => $nb1])
            ->with(['all_stag_info1' => $all_stag_info1]);

    }


    //Modifier le status
    public function unactive_stag($stag_id)
    {
        $this->stagAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_status'=>0]);
        Session::put('message', 'Un stagiare a été désactivé... ');
        return back();

    }

    //Modifier le status
    public function active_stag($stag_id)
    {
        $this->stagAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->update(['stag_status'=>1]);
        Session::put('message', 'Un stagiare a été activé... ');
        return back();
    }

    //supprimer Un Stagiaire
    public function delete_stag($stag_id)
    {
        $this->stagAuthCheck();
        DB::table('tbl_stagiaires')
            ->where('stag_id',$stag_id)
            ->delete();
        Session::put('message', 'Un stagiaire a été supprimé... ');
        return back();
    }

    //ajouter un utilisateur
    public function save_stag(Request $request)
    {
        $this->stagAuthCheck();
        request()->validate([
            'stag_structure' => ['required','max:90'],
            'stag_email' => ['required', 'unique:tbl_stagiaires', 'max:190'],
            'stag_phone' => ['required', 'max:90'],
            'stag_prenom' => ['required', 'max:90'],
            'stag_name' => ['required', 'max:90'],
            'stag_adresse' => ['required', 'max:90'],
            'stag_formation' => ['required', 'max:90'],
            'stag_status' => ['required', 'max:2'],

        ]);
        $data = array();
        $data['stag_id'] = $request->stag_id;
        $data['stag_email'] = $request->stag_email;
        $data['stag_name'] = ($request->stag_name);
        $data['stag_structure'] = $request->stag_structure;
        $data['stag_phone'] = $request->stag_phone;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_formation'] = $request->stag_formation;
        $data['stag_status'] = $request->stag_status;

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


        Mail::send('mail.mailStag', $data, function ($message) use ($data){
            $message->to($data['stag_email']);
            $message->from('mailtrapmail@gmail.com');
            $message->subject('Creation de compte ');

        });
        DB::table('tbl_stagiaires')->insert($data);

        Session::put('message', "Un mail a été envoyé a ".$data['stag_prenom']." !");
        return redirect('/all-stag');
        dump($data);

    }


    //selectionner un utilisateur
    public function edit_stag($stag_id)
    {
        $this->stagAuthCheck();
        $stag_info = DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->first();

        $OF_all = DB::table('tbl_organisme_formation')
            ->get();

        $stag_info = view('stagiaire.edit_stag')->with('stag_info', $stag_info)
            ->with('OF_all', $OF_all);


        return View('admin_layout')
            ->with('stagiaire.all_stag', $stag_info, $OF_all);


    }

    public  function  update_stag(Request $request, $stag_id)
    {
        $this->stagAuthCheck();

        request()->validate([
            'stag_structure' => ['required','max:90'],
            'stag_email' => ['required', 'max:190'],
            'stag_phone' => ['required', 'max:90'],
            'stag_prenom' => ['required', 'max:90'],
            'stag_name' => ['required', 'max:90'],
            'stag_adresse' => ['required', 'max:90'],
            'stag_formation' => ['required', 'max:90'],
            'stag_status' => ['required', 'max:2'],
        ]);
        $data = array();
        $data['stag_id'] = $request->stag_id;
        $data['stag_email'] = $request->stag_email;
        $data['stag_name'] = ($request->stag_name);
        $data['stag_structure'] = $request->stag_structure;
        $data['stag_phone'] = $request->stag_phone;
        $data['stag_prenom'] = $request->stag_prenom;
        $data['stag_adresse'] = $request->stag_adresse;
        $data['stag_formation'] = $request->stag_formation;
        $data['stag_status'] = $request->stag_status;

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
        $this->stagAuthCheck();
        $stag_info = DB::table('tbl_stagiaires')
            ->where('stag_id', $stag_id)
            ->first();

        $stag_info = view('stagiaire.details_stag')->with('stag_info', $stag_info);
        return View('admin_layout')
            ->with('stagiaire.details_stag', $stag_info);
    }

    //permet de verifier si l'utilisateur est connecté
    public function stagAuthCheck()
    {
        $admin_id = Session::get('admin_id');
        if($admin_id){
            return;
        }else
        {
            Session::put('message', 'Vous devez etre connecté pour acceder à cette page ');
            return Redirect::to('/stag')
                ->send();

        }
    }
}
