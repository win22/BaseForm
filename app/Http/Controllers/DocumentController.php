<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class DocumentController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        return view('document.add_doc');
    }


    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_doc_info = DB::table('tbl_documents')
            ->where('doc_name', 'like', '%'.$search.'%')
            ->orderByDesc('doc_id')
            ->paginate(5);
        $nb= $all_doc_info->count();
        return view('document.all_doc', ['all_doc_info' => $all_doc_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des doc
    public function all_doc()
    {
        $this->AdminAuthCheck();
        $all_doc_info =  DB::table('tbl_documents')
            ->orderByDesc('doc_id')
            ->paginate(5);
        $nb= $all_doc_info->count();

        return view('document.all_doc', ['all_doc_info' => $all_doc_info ])
            ->with(['nb' => $nb]);

    }


    //supprimer Un docateur
    public function delete_doc($doc_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_documents')
            ->where('doc_id',$doc_id)
            ->delete();
        Session::put('message', 'Ce document  a été supprimé... ');
        return back();
    }

    //ajouter un doc
    public function save_doc(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'doc_name' => ['required', 'max:60'],
            'doc_contenu' => ['required'],

        ]);
        $data = array();
        $data['doc_id'] = $request->doc_id;
        $data['doc_name'] = $request->doc_name;
        $data['doc_contenu'] = $request->doc_contenu;
        $file = $request->file('doc_file');
        if ($file){
            $file_full_name = strtolower($file->getClientOriginalName());
            $upload_path = 'download/';
            $file_url = $file_full_name;
            $success = $file->move($upload_path,$file_full_name);
            if($success){
                $data['doc_file'] = $file_url;
            }
        }

        DB::table('tbl_documents')->insert($data);
        Session::put('message', "le document " . $data['doc_name'] . " a été crée avec succes !");
        return redirect('/all-doc');


    }



    //selectionner un doc
    public function edit_doc($doc_id)
    {
        $this->AdminAuthCheck();
        $doc_info = DB::table('tbl_documents')
            ->where('doc_id', $doc_id)
            ->first();

        $doc_info = view('document.edit_doc')->with('doc_info', $doc_info);
        return View('admin_layout')
            ->with('documents.all_doc', $doc_info);

    }

    public  function  update_doc(Request $request, $doc_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'doc_name' => ['required', 'max:60'],
            'doc_contenu' => ['required'],

        ]);
        $data = array();
        $data['doc_id'] = $request->doc_id;
        $data['doc_name'] = $request->doc_name;
        $data['doc_contenu'] = $request->doc_contenu;
        $file = $request->file('doc_file');

        if ($file){
            $file_full_name = strtolower($file->getClientOriginalName());
            $upload_path = 'download/';
            $file_url = $file_full_name;
            $success = $file->move($upload_path,$file_full_name);
            if($success){
                $data['doc_file'] = $file_url;
            }
        }

        DB::table('tbl_documents')
            ->where('doc_id', $doc_id)
            ->update($data);
        Session::put('message', " ".$data['doc_name']." a eté modifié avec Succes !");
        return redirect('/all-doc');

    }


    public function detail_doc($doc_id)
    {
        $this->adminAuthCheck();
        $doc_info = DB::table('tbl_documents')
            ->where('doc_id',$doc_id)
            ->first();

        $doc_info = view('document.details_doc')->with('doc_info', $doc_info);
        return View('admin_layout')
            ->with('document.details_doc', $doc_info);
    }

//permet de verifier si l'doc est connecté
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
