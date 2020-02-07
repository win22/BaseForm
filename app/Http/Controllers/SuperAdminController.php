<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Illuminate\View\View;
use Session;
session_start();

class SuperAdminController extends Controller
{


    public function index(){
        $this->AdminAuthCheck();
        return view('admin.dashboard');
    }


    public function countData()
    {
        $this->AdminAuthCheck();
        $all_admin_count = DB::table('tbl_admin')
            ->count();
        $all_of_count = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->count();
        $all_eu_count = DB::table('tbl_entreprise_utilisatrices')
            ->count();
        $all_ei_count = DB::table('tbl_entreprise_intervenantes')
            ->count();

        $all_form_count = DB::table('tbl_formateurs')
            ->where('form_certi', 1)
            ->count();
        $all_formt_count = DB::table('tbl_formations')
            ->count();


        $all_stag_count = DB::table('tbl_stagiaires')
            ->count();


        $all_admin_date = DB::table('tbl_admin')
            ->orderByDesc('admin_id')
            ->select('created_at')
            ->first();
        $all_of_date = DB::table('tbl_organisme_formation')
            ->orderByDesc('of_id')
            ->select('created_at')
            ->first();
        $all_eu_date = DB::table('tbl_entreprise_utilisatrices')
            ->orderByDesc('eu_id')
            ->select('created_at')
            ->first();
        $all_ei_date = DB::table('tbl_entreprise_intervenantes')
            ->orderByDesc('ei_id')
            ->select('created_at')
            ->first();

        $all_form_date = DB::table('tbl_formateurs')
            ->where('form_certi', 1)
            ->orderByDesc('form_id')
            ->select('created_at')
            ->first();
        $all_form_of = DB::table('tbl_formateurs')
            ->where('form_certi', 1)
            ->orderByDesc('form_id')
            ->select('form_of')
            ->first();
        $all_formt_of = DB::table('tbl_formations')
            ->orderByDesc('formt_id')
            ->select('formt_structure')
            ->first();

        $all_formt_date = DB::table('tbl_formations')
            ->orderByDesc('formt_id')
            ->select('created_at')
            ->first();

        $all_stag_date = DB::table('tbl_stagiaires')
            ->where('stag_certi', 1)
            ->orderByDesc('stag_id')
            ->select('created_at')
            ->first();

        $all_stag_structure = DB::table('tbl_stagiaires')
            ->orderByDesc('stag_id')
            ->select('stag_structure')
            ->first();

        if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') ==1 || Session::get('user_role') ==2 )
        {
            $all_form_info =  DB::table('tbl_formateurs')
                ->where('form_certi', 1)
                ->orderByDesc('form_id')
                ->paginate(10);
            $nb_form= $all_form_info->count();
        }
        else{

            $all_form_info =  DB::table('tbl_formateurs')
                ->where('form_of',  Session::get('admin_structure') )
                ->where('form_certi', 1)
                ->limit(10)
                ->orderByDesc('form_id')
                ->get();
            $nb_form= $all_form_info->count();
        }

        if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') ==1 || Session::get('user_role') ==2 )
        {
            $all_stag_info =  DB::table('tbl_stagiaires')
                ->where('stag_certi', 1)
                ->orderByDesc('stag_id')
                ->paginate(10);
            $nb_stag= $all_stag_info->count();
        }
        else{

            $all_stag_info =  DB::table('tbl_stagiaires')
                ->where('stag_structure',  Session::get('admin_structure') )
                ->where('stag_certi', 1)
                ->limit(10)
                ->orderByDesc('stag_id')
                ->get();
            $nb_stag= $all_stag_info->count();
        }



            $all_formt_info =  DB::table('tbl_formations')
                ->where('formt_type', 'agrée')
                ->orderByDesc('formt_id')
                ->paginate(10);
            $nb_formt= $all_formt_info->count();




        return view('admin.dashboard', ['all_admin_count' => $all_admin_count ])
            ->with('all_of_count', $all_of_count)
            ->with('all_eu_count', $all_eu_count)
            ->with('all_ei_count', $all_ei_count)
            ->with('all_form_count', $all_form_count)
            ->with('all_formt_count', $all_formt_count)

            ->with('all_stag_count', $all_stag_count)

            ->with('all_of_date', $all_of_date)
            ->with('all_eu_date', $all_eu_date)
            ->with('all_ei_date', $all_ei_date)
            ->with('all_form_date', $all_form_date)
            ->with('all_form_of', $all_form_of)
            ->with('all_formt_of', $all_formt_of)
            ->with('all_formt_date', $all_formt_date)

            ->with('all_stag_date', $all_stag_date)
            ->with('all_stag_structure', $all_stag_structure)
            ->with('all_admin_date', $all_admin_date)

            ->with('all_form_info', $all_form_info)
            ->with('nb_form', $nb_form)
            ->with('all_stag_info', $all_stag_info)
            ->with('nb_stag', $nb_stag)
        ->with('all_formt_info', $all_formt_info)
        ->with('nb_formt', $nb_formt);
    }



    public function logout()
    {
        Session::flush();
        return Redirect::to('/admin');
    }


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
