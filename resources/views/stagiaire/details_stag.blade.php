@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') == 3)
<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info row">
                <div class="col-md-6">
                    <h4 class="card-title">Utilisateur <i class="fa fa-user"></i></h4>
                    <p class="card-category">Afficher les détails d'un utilisateur </p>
                </div>
                <div class="col-md-6">
                    <img class="img" style="width: 95px; height : 95px; border-radius: 100px" src="{{URL::to($stag_info->stag_image)}}" />
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
                            <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_name }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_prenom }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_email }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_phone }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-home" style="color: #036b75!important;"></li>&nbsp;
                        Structure  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_structure }}</span>
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-graduation-cap" style="color: #036b75!important;"></li>&nbsp;
                        Formation  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($stag_info->stag_formation == 1)
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Formation 1</span>
                        </p>
                        @else
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Formation 2</span>
                        </p>
                        @endif
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-circle" style="color: #036b75!important;"></li>&nbsp;
                        Status  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($stag_info->stag_status == 1)
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
                            <span style="font-family: 'Manjari Bold'"> {{ $stag_info->created_at }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-stag/'.
                        $stag_info->stag_id)}}"  id="md." class="btn btn-warning pull-right">
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