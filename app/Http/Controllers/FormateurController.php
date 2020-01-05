<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();
class FormateurController extends Controller
{
    public function index()
    {
        $this->AdminAuthCheck();
        $OF_all = DB::table('tbl_organisme_formation')
            ->where('of_status', 1)
            ->where('of_certi', 1)
            ->get();
        $FORMT_all = DB::table('tbl_formations')
            ->get();
        $FORM = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->whereIn('of_certi', [1,2,3,4,5])
            ->get();

        $OF = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_certi', 1)
            ->where('of_status', 1)
            ->get();
        return view('formateur.add_fo', ['OF' => $OF])
            ->with('OF_all', $OF_all)
            ->with('FORM', $FORM)
            ->with('FORMT_all', $FORMT_all);
    }

    public function  search(Request $request)
    {
        $this->AdminAuthCheck();
        $search = $request->get('search');
        if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') ==1 || Session::get('user_role') ==2 )
        {
            $all_form_info = DB::table('tbl_formateurs')
                ->where('form_of', 'like', '%'.$search.'%')
                ->where('form_certi', 1)
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb= $all_form_info->count();
        }else
        {
            $all_form_info = DB::table('tbl_formateurs')
                ->where('form_name', 'like', '%'.$search.'%')
                ->where('form_certi', 1)
                ->where('form_of', Session::get('admin_structure'))
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb= $all_form_info->count();
        }

        return view('formateur.all_fo', ['all_form_info' => $all_form_info ])
            ->with(['nb' => $nb]);
    }

    public  function  searchA()
    {
        $this->AdminAuthCheck();
        if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') ==1 || Session::get('user_role') ==2 ) {
            $all_form_info = DB::table('tbl_formateurs')
                ->where('form_etat', 'agrée')
                ->where('form_certi', '1')
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb = $all_form_info->count();
        }
        else
        {
            $all_form_info = DB::table('tbl_formateurs')
                ->where('form_of', Session::get('admin_structure'))
                ->where('form_etat', 'agrée')
                ->where('form_certi', '1')
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb = $all_form_info->count();
        }
        return view('formateur.all_fo', ['all_form_info' => $all_form_info ])
            ->with(['nb' => $nb]);
    }
    public  function  searchN()
    {
        $this->AdminAuthCheck();
        if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') ==1 || Session::get('user_role') ==2 ) {
            $all_form_info = DB::table('tbl_formateurs')
                ->where('form_etat', 'non')
                ->where('form_certi', '1')
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb = $all_form_info->count();
        }else
        {
            $all_form_info = DB::table('tbl_formateurs')
                ->where('form_of', Session::get('admin_structure'))
                ->where('form_etat', 'non')
                ->where('form_certi', '1')
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb = $all_form_info->count();
        }
        return view('formateur.all_fo', ['all_form_info' => $all_form_info ])
            ->with(['nb' => $nb]);
    }

    //afficher la liste des form
    public function all_form()
    {

        $this->AdminAuthCheck();
        if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') ==1 || Session::get('user_role') ==2 )
        {
            $all_form_info =  DB::table('tbl_formateurs')
                ->where('form_certi', 1)
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb= $all_form_info->count();
        }
        else{

            $all_form_info =  DB::table('tbl_formateurs')
                ->where('form_of',  Session::get('admin_structure') )
                ->where('form_certi', 1)
                ->orderByDesc('form_id')
                ->paginate(5);
            $nb= $all_form_info->count();
        }

        return view('formateur.all_fo', ['all_form_info' => $all_form_info ])
            ->with(['nb' => $nb]);

    }

    public function form_valide($form_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->update(['form_etat'=> 'agrée']);
        Session::put('message', 'Un agrément a été attribué à ce formateur  ');
        return back();
    }

    public  function  form_unvalide($form_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->update(['form_etat'=>'non']);
        Session::put('message',  "Vous avez retiré un agrément à ce formateur");
        return back();
    }

    //Modifier le status
    public function unactive_form($form_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->update(['form_status'=>0]);
        Session::put('message', 'Un formateur a été désactivé... ');
        return back();

    }

    //Modifier le status
    public function active_form($form_id)
    {
        $this->adminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->update(['form_status'=>1]);
        Session::put('message', 'Un formateur a été activé... ');
        return back();
    }

    //supprimer une formation d'un formateur
    public function delete_form($form_id)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_formateurs')
            ->where('form_id',$form_id)
            ->delete();
        Session::put('message', 'Cette formation a été supprimée ');
        return back();
    }

    public function  delete_form2($form_token)
    {
        $this->AdminAuthCheck();
        DB::table('tbl_formateurs')
            ->whereIn('form_certi', [0,1,2,3,4,5])
            ->where('form_token', $form_token)
            ->delete();
        Session::put('message', 'Ce formateur a été supprimé');
        return back();
    }

    //ajouter un form
    public function save_form(Request $request)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'form_name' => ['required', 'max: 60'],
            'form_prenom' => ['required','max: 60'],
            'form_adresse' => ['required', 'max: 60'],
            'form_date_naiss' => ['required', 'max: 60'],
            'form_lieu_naiss' => ['required', 'max: 90'],
            'form_adresse' => ['required', 'max: 60'],
            'form_sexe' => ['required','max: 10'],
            'form_email' => ['required', 'unique:tbl_formateurs', 'email', 'max: 191'],
            'form_phone' => ['required','max: 60'],
            'form_etat' => ['required', 'max: 10'],
            'form_of' => ['required', 'max: 90'],
            'form_type_piece' => ['required', 'max: 60'],
            'form_num_piece' => ['required', 'max: 60'],
            'form_situa' => ['required', 'max: 60'],
            'form_of' => [ 'max: 60'],
            'form_formation' => [ 'required', 'max: 60'],
        ]);

        if($request->form_etat == 'agrée')
        {
            request()->validate([
                'form_date_debut' => ['required'],
                'form_date_fin' => ['required'],
            ]);
        }

        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_sexe'] = $request->form_sexe;
        $data['form_date_naiss'] = $request->form_date_naiss;
        $data['form_lieu_naiss'] = $request->form_lieu_naiss;
        $data['form_type_piece'] = $request->form_type_piece;
        $data['form_num_piece'] = $request->form_num_piece;
        $data['form_situa'] = $request->form_situa;

        $data['form_adresse'] = $request->form_adresse;
        $data['form_email'] = $request->form_email;
        $data['form_phone'] = $request->form_phone;
        $data['form_etat'] = $request->form_etat;


        if($request->form_etat == 'non')
        {
            $data['form_date_debut'] = null;
            $data['form_date_fin'] = null;
        }else
        {
            $data['form_date_debut'] = $request->form_date_debut;
            $data['form_date_fin'] = $request->form_date_fin;
        }

        $data['form_of'] = $request->form_of;
        $data['form_formation'] = $request->form_formation;
        $data['form_status'] =  0;
        $data['form_certi'] =  1;
        $data['form_token'] =  str_random(40);
        $image = $request->file('form_image');
        if ($image){
            request()->validate([
                'form_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['form_image'] = $image_url;
            }
        }

        DB::table('tbl_formateurs')->insert($data);
        Session::put('message', "Le formateur " . $data['form_prenom'] . " " . $data['form_name']. " de l'organisme 
        de formation ". $data['form_of']. " a été Ajouter avec succès !");
        return redirect('/all-form');


    }



    //selectionner un form
    public function edit_form($form_id)
    {
        $this->AdminAuthCheck();
        $form_info = DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->first();

        $OF_all = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->get();

        $FORMT_all = DB::table('tbl_formations')
            ->get();
        $FORM = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->whereIn('of_certi', [1,2,3,4,5])
            ->get();

        $form_info = view('formateur.edit_fo')
            ->with('form_info', $form_info)
            ->with('FORM', $FORM)
            ->with('FORMT_all', $FORMT_all)
            ->with('OF_all', $OF_all);
        return View('admin_layout')
            ->with('formateur.all_fo', $form_info, $OF_all);

    }

    public function edit_form2($form_id)
    {
        $this->AdminAuthCheck();
        $form_info = DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->first();

        $OF_all = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->get();

        $FORMT_all = DB::table('tbl_formations')
            ->get();
        $FORM = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->whereIn('of_certi', [1,2,3,4,5])
            ->get();

        $form_info = view('formateur.edit_form_of')
            ->with('form_info', $form_info)
            ->with('FORM', $FORM)
            ->with('FORMT_all', $FORMT_all)
            ->with('OF_all', $OF_all);
        return View('admin_layout')
            ->with('formateur.all_fo', $form_info);

    }

    public  function  update_form(Request $request, $form_id)
    {
        $this->AdminAuthCheck();
        request()->validate([
            'form_name' => ['required', 'max: 60'],
            'form_prenom' => ['required','max: 60'],
            'form_adresse' => ['required', 'max: 60'],
            'form_date_naiss' => ['required', 'max: 60'],
            'form_lieu_naiss' => ['required', 'max: 90'],
            'form_adresse' => ['required', 'max: 60'],
            'form_sexe' => ['required','max: 10'],
            'form_email' => ['required', 'email', 'max: 191'],
            'form_phone' => ['required','max: 60'],
            'form_etat' => ['required', 'max: 10'],
            'form_of' => ['required', 'max: 90'],
            'form_type_piece' => ['required', 'max: 60'],
            'form_num_piece' => ['required', 'max: 60'],
            'form_situa' => ['required', 'max: 60'],
            'form_of' => [ 'max: 60'],
            'form_formation' => [ 'required', 'max: 60'],
        ]);

        if($request->form_etat == 'agrée')
        {
            request()->validate([
                'form_date_debut' => ['required'],
                'form_date_fin' => ['required'],
            ]);
        }

        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_sexe'] = $request->form_sexe;

        $data['form_type_piece'] = $request->form_type_piece;
        $data['form_num_piece'] = $request->form_num_piece;
        $data['form_situa'] = $request->form_situa;

        $data['form_adresse'] = $request->form_adresse;
        $data['form_email'] = $request->form_email;
        $data['form_phone'] = $request->form_phone;
        $data['form_date_naiss'] = $request->form_date_naiss;
        $data['form_lieu_naiss'] = $request->form_lieu_naiss;
        $data['form_etat'] = $request->form_etat;

        if($request->form_etat == 'non')
        {
            $data['form_date_debut'] = null;
            $data['form_date_fin'] = null;
        }else
        {
            $data['form_date_debut'] = $request->form_date_debut;
            $data['form_date_fin'] = $request->form_date_fin;
        }

        $data['form_of'] = $request->form_of;
        $data['form_formation'] = $request->form_formation;
        $data['form_status'] =  0;
        $data['form_certi'] =  1;
        $data['form_token'] =  $request->form_token;
        $image = $request->file('form_image');
        if ($image){
            request()->validate([
                'form_image' => ['image']
            ]);
            $image_name = str_random(20);
            $text = strtolower($image->getClientOriginalExtension());
            $image_full_name =$image_name.'.'.$text;
            $upload_path = 'image/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path,$image_full_name);
            if($success){
                $data['form_image'] = $image_url;
            }
        }
        $data2['form_name'] = $request->form_name;
        $data2['form_prenom'] = $request->form_prenom;
        $data2['form_email'] = $request->form_email;
        $data2['form_adresse'] = $request->form_adresse;
        $data2['form_phone'] = $request->form_phone;
        $data2['form_date_naiss'] = $request->form_date_naiss;
        $data2['form_lieu_naiss'] = $request->form_lieu_naiss;
        $data2['form_type_piece'] = $request->form_type_piece;
        $data2['form_num_piece'] = $request->form_num_piece;
        $data2['form_situa'] = $request->form_situa;
        $data2['form_token'] = $request->form_token;
        $data2['form_of'] = $request->form_of;

        DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->update($data);

        DB::table('tbl_formateurs')
            ->whereIn('form_certi', [2,3,4,5])
            ->where('form_token', $request->form_token )
            ->update($data2);

        Session::put('message', " ".$data['form_name']." a eté modifié avec Succes !");
        return redirect('/all-form');

    }

    public  function  update_form2(Request $request, $form_id)
    {
        $this->AdminAuthCheck();
        if($request->form_etat == 'agrée')
        {
            request()->validate([
                'form_date_debut' => ['required'],
                'form_date_fin' => ['required'],
            ]);
        }


        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_adresse'] = $request->form_adresse;
        $data['form_email'] = $request->form_email;
        $data['form_phone'] = $request->form_phone;
        $data['form_etat'] = $request->form_etat;
        if($request->form_etat == 'non')
        {
            $data['form_date_debut'] = null;
            $data['form_date_fin'] = null;
        }else
        {
            $data['form_date_debut'] = $request->form_date_debut;
            $data['form_date_fin'] = $request->form_date_fin;
        }
        $data['form_sexe'] = $request->form_sexe;
        $data['form_of'] = $request->form_of;
        $data['form_formation'] = $request->form_formation;
        $data['form_status'] =  $request->form_formation;
        $data['form_certi'] =  $request->form_certi;
        $data['form_token'] =  $request->form_token;

        DB::table('tbl_formateurs')
            ->where('form_id', $form_id)
            ->update($data);
        Session::put('message', " ".$data['form_name']." a eté modifié avec Succes !");
        return redirect('/all-form');


    }



    public function detail_form($form_token)
    {
        $this->AdminAuthCheck();
        $form_info = DB::table('tbl_formateurs')
            ->where('form_token', $form_token)
            ->where('form_certi', 1)
            ->first();

        $OF_all = DB::table('tbl_organisme_formation')
            ->where('of_certi', 1)
            ->get();


        $FORMT_all = DB::table('tbl_formations')
            ->get();
        $FORM = DB::table('tbl_organisme_formation')
            ->where('name', Session::get('admin_structure'))
            ->where('of_status', 1)
            ->whereIn('of_certi', [1,2,3,4,5])
            ->get();

        $all_form_info =  DB::table('tbl_formateurs')
            ->where('form_token', $form_token)
            ->whereIn('form_certi' , [2,3,4,5])
            ->orderByDesc('form_id')
            ->paginate(5);
        $nb= $all_form_info->count();

        $form_info = view('formateur.details_fo')->with('form_info', $form_info)
            ->with('FORM', $FORM)
            ->with('FORMT_all', $FORMT_all)
            ->with('all_form_info', $all_form_info)
            ->with('nb', $nb)
            ->with('OF_all', $OF_all);
        return View('admin_layout')
            ->with('formateur.details_fo', $form_info);
    }



    public function saveNewforma(Request $request)
    {
        $this->AdminAuthCheck();

            request()->validate([
                'form_certi' => ['required'],
                'form_formation' => ['required'],
            ]);


        $data = array();
        $data['form_id'] = $request->form_id;
        $data['form_name'] = $request->form_name;
        $data['form_prenom'] = $request->form_prenom;
        $data['form_adresse'] = $request->form_adresse;
        $data['form_email'] = $request->form_email;
        $data['form_phone'] = $request->form_phone;
        $data['form_etat'] = 'non';
            $data['form_date_debut'] = $request->form_date_debut;
            $data['form_date_fin'] = $request->form_date_fin;
        $data['form_sexe'] = $request->form_sexe;
        $data['form_of'] = $request->form_of;
        $data['form_date_naiss'] = $request->form_date_naiss;
        $data['form_lieu_naiss'] = $request->form_lieu_naiss;
        $data['form_certi'] = $request->form_certi;
        $data['form_formation'] = $request->form_formation;
        $data['form_token'] = $request->form_token;
        $data['form_status'] =  0;


        DB::table('tbl_formateurs')->insert($data);
        Session::put('message',  "Une nouvelle Formation a été ajouter au formateur ".$request->form_name);
        return redirect('/all-form');


    }


//permet de verifier si l'form est connecté
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

