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
        $ei_all = DB::table('tbl_entreprise_intervenantes')
            ->where('ei_status', 1)
            ->get();
        return view('itv.add_itv')
            ->with('ei_all', $ei_all);
    }

    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_itv_info = DB::table('tbl_intervenants')
            ->where('itv_name', 'like', '%'.$search.'%')
            ->orWhere('itv_prenom', 'like', '%'.$search.'%')
            ->orWhere('itv_ei', 'like', '%'.$search.'%')
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
        $all_itv_info =  DB::table('tbl_intervenants')
            ->orderByDesc('itv_id')
            ->paginate(5);
        $nb= $all_itv_info->count();

        return view('itv.all_itv', ['all_itv_info' => $all_itv_info ])
            ->with(['nb' => $nb]);

    }

    //activer le status
    public function unactive_itv($itv_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_intervenants')
            ->where('itv_id',$itv_id)
            ->update(['itv_status'=>0]);
        Session::put('message', 'Un intervenant a été désactivé... ');
        return back();

    }

    //Desactiver le status
    public function active_itv($itv_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_intervenants')
            ->where('itv_id',$itv_id)
            ->update(['itv_status'=>1]);
        Session::put('message', 'Un intervenant a été activé... ');
        return back();
    }

    //supprimer Un categeorie
    public function delete_itv($itv_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_intervenants')
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
            'itv_code' => ['required', 'max:60'],
            'itv_numsec' => ['required',  'max:60'],
            'itv_name' => ['required',  'max:60'],
            'itv_prenom' => ['required',  'max:60'],
            'itv_sex' => ['required'],
            'itv_date_naiss' => ['required',  'max:60'],
            'itv_Lieu_naiss' => ['required',  'max:60'],
            'itv_ei' => ['required',  'max:90'],
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
        $data['itv_status'] = 0;
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
        DB::table('tbl_intervenants')->insert($data);
        Session::put('message', "l'intervenat " . $data['itv_name'] . " a été crée avec succes !");
        return redirect('/all-itv');

    }



    //selectionner un itv
    public function edit_itv($itv_id)
    {
        $this->AdminAuthCheck();
        $itv_info = DB::table('tbl_intervenants')
            ->where('itv_id', $itv_id)
            ->first();
        $ei_all = DB::table('tbl_entreprise_intervenantes')
            ->where('ei_status', 1)
            ->get();

        $itv_info = view('itv.edit_itv')
            ->with('ei_all', $ei_all)
            ->with('itv_info', $itv_info);
        return View('admin_layout')
            ->with('itv.all_itv', $itv_info, $ei_all);

    }

    public  function  update_itv(Request $request, $itv_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'itv_code' => ['required', 'max:60'],
            'itv_numsec' => ['required',  'max:60'],
            'itv_name' => ['required',  'max:60'],
            'itv_prenom' => ['required',  'max:60'],
            'itv_sex' => ['required'],
            'itv_date_naiss' => ['required',  'max:60'],
            'itv_Lieu_naiss' => ['required',  'max:60'],
            'itv_ei' => ['required',  'max:90'],
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
        DB::table('tbl_intervenants')
            ->where('itv_id', $itv_id)
            ->update($data);
        Session::put('message', " ".$data['itv_name']." a eté modifié avec Succes !");
        return redirect('/all-itv');

    }

    public function detail_itv($itv_id)
    {
        $this->adminAuthCheck();
        $itv_info = DB::table('tbl_intervenants')
            ->where('itv_id',$itv_id)
            ->first();

        $itv_info = view('itv.details_itv')->with('itv_info', $itv_info);
        return View('admin_layout')
            ->with('itv.details_itv', $itv_info);
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
