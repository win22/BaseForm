<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();
class ItvController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        return view('itv.add_itv');
    }

    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_itv_info = DB::table('tbl_itv')
            ->where('itv_name', 'like', '%'.$search.'%')
            ->orderByDesc('itv_id')
            ->paginate(5);
        $nb= $all_itv_info->count();
        return view('itv.all_itv', ['all_itv_info' => $all_itv_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des itv
    public function all_itv()
    {
        $this->AdminAuthCheck();
        $all_itv_info =  DB::table('tbl_itv')
            ->orderByDesc('itv_id')
            ->paginate(5);
        $nb= $all_itv_info->count();

        return view('itv.all_itv', ['all_itv_info' => $all_itv_info ])
            ->with(['nb' => $nb]);

    }


    //supprimer Un categeorie
    public function delete_itv($itv_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_itv')
            ->where('itv_id',$itv_id)
            ->delete();
        Session::put('message', 'Cette entreprise Intervenante a été supprimé... ');
        return back();
    }

    //ajouter un itv
    public function save_itv(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'itv_code' => ['required'],
            'itv_numsec' => ['required'],
            'itv_name' => ['required'],
            'itv_prenom' => ['required'],
            'itv_sex' => ['required'],
            'itv_date_naiss' => ['required'],
            'itv_Lieu_naiss' => ['required'],
            'itv_ei' => ['required'],
        ]);

        $data = array();
        $data['itv_id'] = $request->itv_id;
        $data['itv_code'] = $request->itv_code;
        $data['itv_numsec'] = $request->itv_numsec;
        $data['itv_name'] = $request->itv_name;
        $data['itv_prenom'] = $request->itv_prenom;
        $data['itv_sex'] = $request->itv_sex;
        $data['itv_date_naiss'] = $request->itv_date_naiss;
        $data['itv_Lieu_naiss'] = $request->itv_Lieu_naiss;
        $data['itv_ei'] = $request->itv_ei;
        $image = $request->file('itv_image');
        if ($image){
            request()->validate([
                'itv_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['itv_image'] = $image_url;
            }
        }
        DB::table('tbl_itv')->insert($data);
        Session::put('message', "l'intervenat " . $data['itv_name'] . " a été crée avec succes !");
        return redirect('/all-itv');

    }



    //selectionner un itv
    public function edit_itv($itv_id)
    {
        $this->AdminAuthCheck();
        $itv_info = DB::table('tbl_itv')
            ->where('itv_id', $itv_id)
            ->first();

        $itv_info = view('itv.edit_itv')->with('itv_info', $itv_info);
        return View('admin_layout')
            ->with('itv.all_itv', $itv_info);

    }

    public  function  update_itv(Request $request, $itv_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'itv_code' => ['required'],
            'itv_numsec' => ['required'],
            'itv_name' => ['required'],
            'itv_prenom' => ['required'],
            'itv_sex' => ['required'],
            'itv_date_naiss' => ['required'],
            'itv_Lieu_naiss' => ['required'],
            'itv_ei' => ['required'],
        ]);

        $data = array();
        $data['itv_id'] = $request->itv_id;
        $data['itv_code'] = $request->itv_code;
        $data['itv_numsec'] = $request->itv_numsec;
        $data['itv_name'] = $request->itv_name;
        $data['itv_prenom'] = $request->itv_prenom;
        $data['itv_sex'] = $request->itv_sex;
        $data['itv_date_naiss'] = $request->itv_date_naiss;
        $data['itv_Lieu_naiss'] = $request->itv_Lieu_naiss;
        $data['itv_ei'] = $request->itv_ei;
        $image = $request->file('itv_image');
        if ($image){
            request()->validate([
                'itv_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['itv_image'] = $image_url;
            }
        }
        DB::table('tbl_itv')
            ->where('itv_id', $itv_id)
            ->update($data);
        Session::put('message', " ".$data['itv_name']." a eté modifié avec Succes !");
        return redirect('/all-itv');

    }






//permet de verifier si l'itv est connecté
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
