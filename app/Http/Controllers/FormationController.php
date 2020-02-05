<?php

namespace App\Http\Controllers;

use File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;

session_start();

class formationController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        $OF = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->where('of_status', 1)
            ->get();

        return view('formation.add_formt', ['OF' => $OF]);
    }

    public function search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_formt_info = DB::table('tbl_formations')
            ->where('formt_name', 'like', '%' . $search . '%')
            ->where('formt_type', 'agrée')
            ->orderByDesc('formt_id')
            ->paginate(5);
        $nb = $all_formt_info->count();
        return view('formation.all_formt', ['all_formt_info' => $all_formt_info])
            ->with(['nb' => $nb]);
    }

    public function search2(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_formt_info = DB::table('tbl_formations')
            ->where('formt_structure', 'like', '%' . $search . '%')
            ->where('formt_type', 'non')
            ->orderByDesc('formt_id')
            ->paginate(5);
        $nb = $all_formt_info->count();
        return view('formation.all_formt_non', ['all_formt_info' => $all_formt_info])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des formt
    public function all_formt()
    {
        $this->AdminAuthCheck();
        $all_formt_info = DB::table('tbl_formations')
            ->where('formt_type', 'agrée')
            ->orderByDesc('formt_id')
            ->paginate(5);
        $nb = $all_formt_info->count();

        return view('formation.all_formt', ['all_formt_info' => $all_formt_info])
            ->with(['nb' => $nb]);

    }

    //afficher la liste des formt
    public function all_formt_n()
    {
        $this->AdminAuthCheck();
        $all_formt_info = DB::table('tbl_formations')
            ->where('formt_type', 'non')
            ->orderByDesc('formt_id')
            ->paginate(5);
        $nb = $all_formt_info->count();

        return view('formation.all_formt_non', ['all_formt_info' => $all_formt_info])
            ->with(['nb' => $nb]);

    }


    //supprimer Un formtateur
    public function delete_formt($formt_id)
    {
        $this->AdminAuthCheck();
        $formation = DB::table('tbl_formations')
            ->where('formt_id', $formt_id)
            ->first();
        File::delete('formation/' . $formation->formt_file . '');

        DB::table('tbl_formations')
            ->where('formt_id', $formt_id)
            ->delete();

        Session::put('message', 'Cette formation a été supprimé... ');
        return back();
    }

    //ajouter un formt
    public function save_formt(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'formt_name' => ['required'],
            'formt_contenu' => ['required'],
            'formt_time' => ['required'],
            'formt_type' => ['required'],

        ]);
        $data = array();
        $data['formt_id'] = $request->formt_id;
        $data['formt_name'] = $request->formt_name;
        $data['formt_contenu'] = $request->formt_contenu;
        $data['formt_time'] = $request->formt_time;
        $data['formt_type'] = $request->formt_type;
        $data['formt_structure'] = $request->formt_structure;
        $file = $request->file('formt_file');
        if ($file) {
            $file_full_name = strtolower($file->getClientOriginalName());
            $upload_path = 'formation/';
            $file_url = $file_full_name;
            $success = $file->move($upload_path, $file_full_name);
            if ($success) {
                $data['formt_file'] = $file_url;
            }
        }

        DB::table('tbl_formations')->insert($data);
        Session::put('message', "la formation " . $data['formt_name'] . " a été ajoutée avec succès !");
        return redirect('/all-formt');


    }


    //selectionner un formt
    public function edit_formt($formt_id)
    {
        $this->AdminAuthCheck();
        $formt_info = DB::table('tbl_formations')
            ->where('formt_id', $formt_id)
            ->first();

        $OF = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->where('of_status', 1)
            ->get();


        $formt_info = view('formation.edit_formt')
            ->with('formt_info', $formt_info)
            ->with('OF', $OF);
        return View('admin_layout')
            ->with('formations.all_formt', $formt_info);

    }

    public function update_formt(Request $request, $formt_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'formt_name' => ['required'],
            'formt_contenu' => ['required'],
            'formt_time' => ['required'],
            'formt_type' => ['required'],

        ]);
        $data = array();
        $data['formt_id'] = $request->formt_id;
        $data['formt_name'] = $request->formt_name;
        $data['formt_contenu'] = $request->formt_contenu;
        $data['formt_time'] = $request->formt_time;
        $data['formt_type'] = $request->formt_type;
        $data['formt_structure'] = $request->formt_structure;
        $file = $request->file('formt_file');
        if($file){
            dump('0');
            $file_full_name = strtolower($file->getClientOriginalName());
            dump('1');
            $upload_path = 'formation/';
            dump('2');
            $file_url = $file_full_name;
            dump('3');
            $success = $file->move($upload_path, $file_full_name);
            if ($success) {
                $data['formt_file'] = $file_url;
            }
        }

        DB::table('tbl_formations')
            ->where('formt_id', $formt_id)
            ->update($data);
        Session::put('message', "La formation " . $data['formt_name'] . " a eté modifiée avec succès !");
        return redirect('/all-formt');
        dump(Input::all());

    }


    public function detail_formt($formt_id)
    {
        $this->AdminAuthCheck();
        $formt_info = DB::table('tbl_formations')
            ->where('formt_id', $formt_id)
            ->first();

        $formt_info = view('formation.details_formt')->with('formt_info', $formt_info);
        return View('admin_layout')
            ->with('formation.details_formt', $formt_info);
    }


    //permet de verifier si l'formt est connecté
    public function AdminAuthCheck()
    {
        $admin_id = Session::get('admin_id');
        if ($admin_id) {
            return;
        } else {
            Session::put('message', 'Vous devez etre connecté pour acceder à cette page ');
            return Redirect::to('/admin')
                ->send();

        }
    }
}
