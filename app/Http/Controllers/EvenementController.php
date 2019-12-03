<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class EvenementController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        return view('evenement.add_even');
    }
    
    
    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_even_info = DB::table('tbl_evenements')
            ->where('even_name', 'like', '%'.$search.'%')
            ->orderByDesc('even_id')
            ->paginate(5);
        $nb= $all_even_info->count();
        return view('evenement.all_even', ['all_even_info' => $all_even_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des even
    public function all_even()
    {
        $this->AdminAuthCheck();
        $all_even_info =  DB::table('tbl_evenements')
            ->orderByDesc('even_id')
            ->paginate(5);
        $nb= $all_even_info->count();

        return view('evenement.all_even', ['all_even_info' => $all_even_info ])
            ->with(['nb' => $nb]);

    }


    //supprimer Un evenement
    public function delete_even($even_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_evenements')
            ->where('even_id',$even_id)
            ->delete();
        Session::put('message', 'Cette évenement a été supprimé avec succés... ');
        return back();
    }


    //ajouter un even
    public function save_even(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'even_name' => ['required'],
            'even_date' => ['required'],
            'even_description' => ['required'],

        ]);
        $data = array();
        $data['even_id'] = $request->even_id;
        $data['even_name'] = $request->even_name;
        $data['even_date'] = $request->even_date;
        $data['even_description'] = $request->even_description;

        DB::table('tbl_evenements')->insert($data);
        Session::put('message', "l'événement  " . $data['even_name'] . " a été crée avec succes !");
        return redirect('/all-even');
    }



    //selectionner un even
    public function edit_even($even_id)
    {
        $this->AdminAuthCheck();
        $even_info = DB::table('tbl_evenements')
            ->where('even_id', $even_id)
            ->first();

        $even_info = view('evenement.edit_even')->with('even_info', $even_info);
        return View('admin_layout')
            ->with('evenement.all_even', $even_info);

    }

    public  function  update_even(Request $request, $even_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'even_name' => ['required'],
            'even_date' => ['required'],
            'even_description' => ['required'],
        ]);
        $data = array();
        $data['even_id'] = $request->even_id;
        $data['even_name'] = $request->even_name;
        $data['even_date'] = $request->even_date;
        $data['even_description'] = $request->even_description;

        DB::table('tbl_evenements')
            ->where('even_id', $even_id)
            ->update($data);
        Session::put('message', " ".$data['even_name']." a eté modifié avec Succes !");
        return redirect('/all-even');

    }

    public function detail_even($even_id)
    {
        $this->adminAuthCheck();
        $even_info = DB::table('tbl_evenements')
            ->where('even_id',$even_id)
            ->first();

        $even_info = view('evenement.details_even')->with('even_info', $even_info);
        return View('admin_layout')
            ->with('evenement.details_even', $even_info);
    }
    

    //permet de verifier si l'even est connecté
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
