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
        $all_of_count = DB::table('tbl_of')
            ->count();
        $all_eu_count = DB::table('tbl_eu')
            ->count();
        $all_ei_count = DB::table('tbl_ei')
            ->count();
        $all_itv_count = DB::table('tbl_itv')
            ->count();
        $all_form_count = DB::table('tbl_formateurs')
            ->count();
        $all_formt_count = DB::table('tbl_formations')
            ->count();
        $all_even_count = DB::table('tbl_evenements')
            ->count();
        $all_doc_count = DB::table('tbl_documents')
            ->count();


        $all_admin_date = DB::table('tbl_admin')
            ->orderByDesc('admin_id')
            ->select('created_at')
            ->first();
        $all_of_date = DB::table('tbl_of')
            ->orderByDesc('of_id')
            ->select('created_at')
            ->first();
        $all_eu_date = DB::table('tbl_eu')
            ->orderByDesc('eu_id')
            ->select('created_at')
            ->first();
        $all_ei_date = DB::table('tbl_ei')
            ->orderByDesc('ei_id')
            ->select('created_at')
            ->first();
        $all_itv_date = DB::table('tbl_itv')
            ->orderByDesc('itv_id')
            ->select('created_at')
            ->first();
        $all_form_date = DB::table('tbl_formateurs')
            ->orderByDesc('form_id')
            ->select('created_at')
            ->first();
        $all_formt_date = DB::table('tbl_formations')
            ->orderByDesc('formt_id')
            ->select('created_at')
            ->first();
        $all_even_date = DB::table('tbl_evenements')
            ->orderByDesc('even_id')
            ->select('created_at')
            ->first();
        $all_doc_date = DB::table('tbl_documents')
            ->orderByDesc('doc_id')
            ->select('created_at')
            ->first();

        return view('admin.dashboard', ['all_admin_count' => $all_admin_count ])
            ->with('all_of_count', $all_of_count)
            ->with('all_eu_count', $all_eu_count)
            ->with('all_ei_count', $all_ei_count)
            ->with('all_itv_count', $all_itv_count)
            ->with('all_form_count', $all_form_count)
            ->with('all_formt_count', $all_formt_count)
            ->with('all_even_count', $all_even_count)
            ->with('all_doc_count', $all_doc_count)

            ->with('all_of_date', $all_of_date)
            ->with('all_eu_date', $all_eu_date)
            ->with('all_ei_date', $all_ei_date)
            ->with('all_itv_date', $all_itv_date)
            ->with('all_form_date', $all_form_date)
            ->with('all_formt_date', $all_formt_date)
            ->with('all_even_date', $all_even_date)
            ->with('all_doc_date', $all_doc_date)
            ->with('all_admin_date', $all_admin_date);
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
