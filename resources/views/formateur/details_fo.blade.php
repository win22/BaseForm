@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') == 3)
<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info row">
                <div class="col-md-6">
                    <h4 class="card-title">Formateur <i class="fa fa-user"></i></h4>
                    <p class="card-category">Afficher les détails d'un formateur </p>
                </div>

            </div>

            <div class="card-body">

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-user" style="color: #036b75!important;"></li>&nbsp;
                        Nom :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_name }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-user" style="color: #036b75!important;"></li>&nbsp;
                        Prénom :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_prenom }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-envelope" style="color: #036b75!important;"></li>&nbsp;
                        Adresse e-mail :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_email }}</span>
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-phone" style="color: #036b75!important;"></li>&nbsp;
                        Téléphone :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_phone }}</span>
                        </p>
                    </div>
                </div>
                @if($form_info->form_of)
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-home" style="color: #036b75!important;"></li>&nbsp;
                        Organisme de formation
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_of }}</span>
                        </p>
                    </div>
                </div>
                @endif

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-circle" style="color: #036b75!important;"></li>&nbsp;
                        Status  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($form_info->form_status == 1)
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Activé</span>
                        </p>
                        @else
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Désactivé</span>
                        </p>
                        @endif
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-calendar" style="color: #036b75!important;"></li>&nbsp;
                        Date de création :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $form_info->created_at }}</span>
                        </p>
                    </div>
                </div>
                @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                || Session::get('admin_role')== 3
                && Session::get('admin_structure')== $form_info->form_of  )
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-form/'.
                        $form_info->form_id)}}"  id="md." class="btn btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;
                    </div>

                </div>

            </div>
        </div>

    </div>

</div>

@endif
@endsection