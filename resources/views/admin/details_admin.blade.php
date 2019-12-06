@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)

<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info row">
                <div class="col-md-6">
                <h4 class="card-title">Utilisatadminr <i class="fa fa-user"></i></h4>
                <p class="card-category">Afficher les détails d'un utilisatadminr</p>
                </div>

                <div class="col-md-6">
                    <img class="img" style="width: 95px; height : 95px; border-radius: 100px" src="{{URL::to($admin_info->admin_image)}}" />
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
                            <span style="font-family: 'Manjari Bold'"> {{ $admin_info->admin_prenom }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $admin_info->admin_email }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $admin_info->admin_phone }}</span>
                        </p>
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
                            <span style="font-family: 'Manjari Bold'"> {{  strftime("%d %B %Y", strtotime( $admin_info->created_at)) }}</span>
                        </p>
                    </div>
                </div>
                @if($admin_info->admin_structure)
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-home" style="color: #036b75!important;"></li>&nbsp;
                            Structure  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $admin_info->admin_structure }}</span>
                        </p>
                    </div>
                </div>
                @endif
                @if($admin_info->user_role)
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-cubes" style="color: #036b75!important;"></li>&nbsp;
                        Categorié  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($admin_info->user_role == 1)
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Entreprise utilisatrice</span>
                        </p>
                        @elseif($admin_info->user_role == 2)
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Entreprise intervenante</span>
                        </p>
                        @else
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Organisme de formation</span>
                        </p>
                        @endif
                    </div>
                </div>
                @endif
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-circle" style="color: #036b75!important;"></li>&nbsp;
                        status  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($admin_info->admin_status == 1)
                        <p class="card-title">
                            <span class="text-success bold" style="font-family: 'Manjari Bold'">Activé</span>
                        </p>
                        @else
                        <p class="card-title">
                            <span class="text-danger" style="font-family: 'Manjari Bold'">Désactivé</span>
                        </p>
                        @endif
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-user" style="color: #036b75!important;"></li>&nbsp;
                        Role  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($admin_info->admin_role == 1)
                        <p class="card-title">
                            <span  style="font-family: 'Manjari Bold'; color: #ff6a0f;" >Administrateur</span>
                        </p>
                        @elseif($admin_info->admin_role == 2)
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'; color: #05af5a;">Utilisateur</span>
                        </p>
                        @else
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'; color: #09a2ff;">Autres utilisateurs</span>
                        </p>
                        @endif
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-admin/'.
                        $admin_info->admin_id)}}"  id="md." class="btn btn-warning pull-right">
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