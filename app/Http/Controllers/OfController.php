<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Illuminate\View\View;
use Session;
Use Mail;
use Excel;

session_start();
class OfController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        $OF = DB::table('tbl_formations')
            ->get();
        return View('of.add_of', ['OF'=> $OF]);
    }

    public  function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        $all_of_info = DB::table('tbl_organisme_formation')
            ->where('name', 'like', '%'.$search.'%')
            ->where('of_certi', 1)
            ->orderByDesc('of_id')
            ->paginate(5);
        $nb= $all_of_info->count();
        return view('of.all_of', ['all_of_info' => $all_of_info ])
            ->with(['nb' => $nb]);
    }


    //Extraire les données vers excel
    public  function excel()
    {
        $data = DB::table('tbl_organisme_formation')
            ->orWhere('of_certi', 1)
            ->get()
            ->toArray();
        $data_array[] = array('name', 'of_adresse', 'of_email', 'of_phone', 'of_formation', 'of_etat');
        foreach ( $data as $da)
        {
            $data_array[] = array('name' => $da->name,
                'of_adresse'  => $da->of_adresse,
                'of_email'  => $da->of_email,
                'of_phone' => $da->of_phone,
                'of_formation' => $da->of_formation,
                'of_etat'  => $da->of_etat);
        }
        Excel::create('data', function ($excel)use ($data_array)
        {
            $excel->setTitle('data');
            $excel->sheet('data',function ($sheet) use ($data_array){
               $sheet->fromArray($data_array, null, 'A1', false, false);
            });
        })->download('xlsx');

    }

    //afficher la liste des OFs
    public function all_of()
    {

        $this->AdminAuthCheck();
        $all_of_info =  DB::table('tbl_organisme_formation')
            ->orWhere('of_certi', 1)
            ->orWhere('of_certi', 0)
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
        DB::table('tbl_organisme_formation')
            ->where('of_id',$of_id)
            ->update(['of_status'=>0]);
        Session::put('message', 'Un OF a été désactivé... ');
        return back();

    }

    //Modifier le status
    public function active_of($of_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_organisme_formation')
            ->where('of_id',$of_id)
            ->update(['of_status'=>1]);
        Session::put('message', 'Un OF a été activé... ');
        return back();
    }

    //supprimer un OF
    public function delete_agre_of($of_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_organisme_formation')
            ->where('of_id',$of_id)
            ->delete();
        Session::put('message', 'Cette supprésion a été effectué avec succès. ');
        return back();
    }

    //supprimer un OF
    public function delete_of($name)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_organisme_formation')
            ->whereIn('of_certi', [0,1,2,3,4,5])
            ->where('name', $name )
            ->delete();

        DB::table('tbl_admin')
            ->where('admin_structure', $name)
            ->delete();


        Session::put('message', 'Cette supprésion a été effectué avec succès. ');
        return back();
    }

    //ajouter un OF
    public function save_of(Request $request)
    {
        request()->validate([
            'of_adresse' => ['required'],
            'name' => ['required'],
            'of_email' => ['required','unique:tbl_organisme_formation', 'email'],
            'of_etat' => ['required'],
            'of_phone' => ['required'],
            'of_date_ad' => ['required'],
            'of_formation' => ['required'],
        ]);


        $this->AdminAuthCheck();
        $data = array();
        $data['of_id'] = $request->of_id;
        $data['name'] = $request->name;
        $data['of_email'] = $request->of_email;
        $data['of_adresse'] = $request->of_adresse;
        $data['of_phone'] = $request->of_phone;
        $data['of_etat'] = $request->of_etat;
            $data['of_date_ad'] = $request->of_date_ad;
            $data['of_formation'] = $request->of_formation;
            $data['of_certi'] = 1;
        $data['of_status'] = 0;
        $data['user_role'] = 3;
        $data['of_tok'] = str_random(50);

        DB::table('tbl_organisme_formation')->insert($data);
        Session::put('message', "l'organisme ".$data['name']." a été ajouté avec succes");
        return redirect('/all-of');

    }


    //ajouter un  agrement  OF
    public function save_agre(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'of_formation' => ['required'],
            'of_certi' => ['required'],
        ]);

        $this->AdminAuthCheck();
        $data = array();
        $data['of_id'] = $request->of_id;
        $data['name'] = $request->name;
        $data['of_email'] = $request->of_email;
        $data['of_adresse'] = $request->of_adresse;
        $data['of_phone'] = $request->of_phone;
        $data['of_etat'] = $request->of_etat;
        $data['of_date_ad'] = $request->of_date_ad;

        $data['of_formation'] = $request->of_formation;
        $data['of_certi'] = $request->of_certi;
        $data['of_status'] = 0;
        $data['of_tok'] = $request->of_tok;
        $data['user_role'] = $request->user_role;

        DB::table('tbl_organisme_formation')->insert($data);
        Session::put('message', "un nouvelle agrément a été ajoutée à ".$data['name']);
        return redirect('/details-of/'.$request->of_tok);


    }

    //selectionner un OF
    public function edit_of($of_id)
    {
        $this->AdminAuthCheck();
        $OF = DB::table('tbl_formations')
            ->get();

        $of_info = DB::table('tbl_organisme_formation')
            ->where('of_id', $of_id)
            ->first();

        $of_info = view('of.edit_of')
            ->with('of_info', $of_info)
            ->with('OF', $OF);
        return View('admin_layout')
            ->with('of.edit_of', $of_info)
            ->with('of.edit_of', $of_info);

        //return View('of.edit_of');
    }

    public function edit_agre_of($of_id)
    {
        $this->AdminAuthCheck();
        $OF = DB::table('tbl_formations')
            ->get();

        $of_info = DB::table('tbl_organisme_formation')
            ->where('of_id', $of_id)
            ->first();

        $of_info = view('of.edit_agre')
            ->with('of_info', $of_info)
            ->with('OF', $OF);
        return View('admin_layout')
            ->with('of.edit_agre', $of_info)
            ->with('of.edit_agre', $of_info);

    }



    public  function  update_of(Request $request, $of_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'of_adresse' => ['required'],
            'name' => ['required'],
            'of_email' => ['required', 'email'],
            'of_etat' => ['required'],
            'of_phone' => ['required'],
            'of_date_ad' => ['required'],
            'of_formation' => ['required'],
        ]);

        $this->AdminAuthCheck();
        $data = array();
        $data3 = array();
        $data['of_id'] = $request->of_id;
        $data['name'] = $request->name;
        $data['of_email'] = $request->of_email;
        $data['of_adresse'] = $request->of_adresse;
        $data['of_phone'] = $request->of_phone;
        $data['of_etat'] = $request->of_etat;
            $data['of_date_ad'] = $request->of_date_ad;
            $data['of_formation'] = $request->of_formation;
            $data['of_certi'] = 1;
        $data['of_date_ad'] = $request->of_date_ad;

        $data2['name'] = $request->name;
        $data2['of_email'] = $request->of_email;
        $data2['of_adresse'] = $request->of_adresse;
        $data2['of_phone'] = $request->of_phone;
        $data2['of_date_ad'] = $request->of_date_ad;
        $data2['of_tok'] = $request->of_tok;

        $date3['admin_structure'] = $request->of_name;



        DB::table('tbl_organisme_formation')
                ->where('of_id', $of_id)
                ->update($data);

        DB::table('tbl_organisme_formation')
            ->whereIn('of_certi', [2,3,4,5])
            ->where('of_tok', $request->of_tok )
            ->update($data2);

//        $test = DB::table('tbl_admin')
//            ->where('admin_structure', $request->of_name)
//            ->select('admin_structure')
//            ->get();

            Session::put('message', "l'OF ".$data['name']." a eté modifiée avec Succès !");
            return redirect('/all-of');


    }

    public  function  update_agre_of(Request $request, $of_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'of_formation' => ['required'],
            'of_certi' => ['required']
        ]);


        $this->AdminAuthCheck();
        $data = array();
        $data['of_id'] = $request->of_id;
        $data['of_certi'] = $request->of_certi;
        $data['of_formation'] = $request->of_formation;

        DB::table('tbl_organisme_formation')
            ->where('of_id', $of_id)
            ->update($data);

        Session::put('message', "Cette agrément a été modifié avec succès");
        return redirect('/details-of/'.$request->of_tok);
    }

    public function detail_of($of_tok)
    {
        $this->AdminAuthCheck();
        $of_info = DB::table('tbl_organisme_formation')
            ->where('of_tok', $of_tok)
            ->first();
        $OF = DB::table('tbl_formations')
            ->get();

        $all_of_info =  DB::table('tbl_organisme_formation')
            ->where('of_tok', $of_tok)
            ->where('of_certi', '>=', 2)
            ->orderByDesc('of_id')
            ->paginate(5);
        $nb= $all_of_info->count();


        $of_info = view('of.details_of')
            ->with('of_info', $of_info)
            ->with('all_of_info', $all_of_info)
            ->with('nb', $nb)
            ->with('OF', $OF);
        return View('admin_layout')
            ->with('of.details_of', $of_info);
    }

//    public function verify_all()
//    {
//        $this->AdminAuthCheck();
//        $of_info = DB::table('tbl_organisme_formation')
//                    ->get();
//
//
//        $of_info = view('of.details_of')->with('of_info', $of_info);
//        return View('admin_layout')
//            ->with('of.details_of', $of_info);
//    }



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
