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
        $admin_email = $request->admin_email;
        $admin_password = $request->admin_password;
        $data = DB::table('tbl_admin')
            ->where('admin_email', $admin_email)
            ->first();

        $redirect = '/admin';
        $errors = Session::put('message', 'Vos identifiants sont incorrectes');
        if (isset($data)) {
            if ($data->admin_status == 0) {
                $errors = Session::put('message', "votre compte n'est pas activé");
            } else if (hash::check($admin_password, $data->admin_password)) {
                Session::put('admin_structure', $data->admin_structure);
                Session::put('admin_prenom', $data->admin_prenom);
                Session::put('admin_phone', $data->admin_phone);
                Session::put('admin_role', $data->admin_role);
                Session::put('admin_id', $data->admin_id);
                Session::put('admin_email', $data->admin_email);
                Session::put('admin_phone', $data->admin_phone);
                Session::put('user_role', $data->user_role);
                Session::put('admin_image', $data->admin_image);
                $redirect = '/dashboard';
                $errors = Session::put('message', null);

            }
        }
        return redirect($redirect)->with($errors);
    }

}
