<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class HomeController extends Controller
{

    public function test()
    {
        return redirect::to('/admin');
    }

    public function index()
    {
        return view('admin.login');
    }


    public function login(Request $request)
    {
        request()-> validate([
            'admin_email' => ['required', 'email'],
            'admin_password' => ['required', 'min:8']
        ]);
        $admin_email = $request->admin_email;
        $admin_password = md5($request->admin_password);
        $result2 = DB::table('tbl_admin')
            ->where('admin_email',$admin_email)
            ->where('admin_password', $admin_password)
            ->where('admin_status', 0)
            ->first();
        $result = DB::table('tbl_admin')
            ->where('admin_email',$admin_email)
            ->where('admin_password', $admin_password)
            ->where('admin_status', 1)
            ->first();
        if($result){
                Session::put('admin_structure', $result->admin_structure);
                Session::put('admin_prenom', $result->admin_prenom);
                Session::put('admin_phone', $result->admin_phone);
                Session::put('admin_role', $result->admin_role);
                Session::put('admin_id', $result->admin_id);
                Session::put('admin_email', $result->admin_email);
                Session::put('admin_phone', $result->admin_phone);
                Session::put('admin_image', $result->admin_image);
               return redirect::to('/dashboard');
        }

        if($result2){
            return Redirect::to('/admin')
                ->withInput()->withErrors([
                    'admin_email' => 'Veuillez activer votre Compte avant de vous connectez',
                ]);

        }
        else{
            return Redirect::to('/admin')
                ->withInput()->withErrors([
                    'admin_email' => 'Vos  identifiants sont incorrects',

                ]);

        }

    }
}
