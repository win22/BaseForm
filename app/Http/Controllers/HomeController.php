<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
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
        request()->validate([
            'admin_email' => ['required', 'email'],
            'admin_password' => ['required']
        ]);
        $admin_email =  $request->admin_email;
        $admin_password =  $request->admin_password;
        $data = DB::table('tbl_admin')
            ->where('admin_email', $admin_email)->first();

        $redirect = '/admin';
        $errors = Session::put('message','Vos identifiants sont incorrectes');
        if(isset($data))
        {
            if($data->admin_status = 0)
            {
               $errors = Session::put('message', "votre compte n'est pas activé");
            }
            else if(hash::check($admin_password, $data->admin_password))
            {
                Session::put('admin_structure', $data->admin_structure);
                Session::put('admin_prenom', $data->admin_prenom);
                Session::put('admin_phone', $data->admin_phone);
                Session::put('admin_role', $data->admin_role);
                Session::put('admin_id', $data->admin_id);
                Session::put('admin_email', $data->admin_email);
                Session::put('admin_phone', $data->admin_phone);
                Session::put('user_role', $data->user_role);
                Session::put('admin_image', $data->admin_image);
                $redirect ='/dashboard';
            }
        }
        return redirect($redirect)->with($errors);
    }

//    public function login(Request $request)
//    {
//        request()-> validate([
//            'admin_email' => ['required', 'email'],
//            'admin_password' => ['required', 'min:8']
//        ]);
//        $admin_email = $request->admin_email;
//        $admin_password = md5($request->admin_password);
//        $result2 = DB::table('tbl_admin')
//            ->where('admin_email',$admin_email)
//            ->where('admin_password', $admin_password)
//            ->where('admin_status', 0)
//            ->first();
//        $result = DB::table('tbl_admin')
//            ->where('admin_email',$admin_email)
//            ->where('admin_password', $admin_password)
//            ->where('admin_status', 1)
//            ->first();
//        if($result){
//                Session::put('admin_structure', $result->admin_structure);
//                Session::put('admin_prenom', $result->admin_prenom);
//                Session::put('admin_phone', $result->admin_phone);
//                Session::put('admin_role', $result->admin_role);
//                Session::put('admin_id', $result->admin_id);
//                Session::put('admin_email', $result->admin_email);
//                Session::put('admin_phone', $result->admin_phone);
//                Session::put('user_role', $result->user_role);
//                Session::put('admin_image', $result->admin_image);
//               return redirect::to('/dashboard');
//        }
//
//        if($result2){
//            return Redirect::to('/admin')
//                ->withInput()->withErrors([
//                    'admin_email' => 'Veuillez activer votre Compte avant de vous connectez',
//                ]);
//
//        }
//        else{
//            return Redirect::to('/admin')
//                ->withInput()->withErrors([
//                    'admin_email' => 'Vos  identifiants sont incorrects',
//
//                ]);
//
//        }
//
//    }
}
