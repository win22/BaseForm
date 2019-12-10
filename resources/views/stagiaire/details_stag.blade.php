@extends('admin_layout')
@section('contenu')



<p class="alert">{{ $message = Session::get('message')}}</p>
@if($message)
<div id="alert" class="alert alert-success alert-with-icon col-md-4 left">
    <i class="material-icons" data-notify="icon">add_alert</i>
    </button>
    <span data-notify="message">{{$message }}</span>
</div>
{{ Session::put('message',NULL) }}
@endif


<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info row">
                <div class="col-md-6">
                    <h4 class="card-title">Stagiaire <i class="fa fa-asl-interpreting"></i></h4>
                    <p class="card-category">Afficher les détails d'un stagiaire </p>
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
                        <li class="fa fa-intersex" style="color: #036b75!important;"></li>&nbsp;
                        Sexe  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($stag_info->stag_sexe == 1)
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Homme</span>
                        </p>
                        @else
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'">Femme</span>
                        </p>
                        @endif
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
                            <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_structure }}</span>
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
                        <span class="text-info" style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_formation }}</span>
                    </div>
                </div>

                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
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
                @endif
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-calendar" style="color: #036b75!important;"></li>&nbsp;
                        Début de la formation :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ strftime("%d %B %Y", strtotime($stag_info->stag_date_debu)) }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-calendar" style="color: #036b75!important;"></li>&nbsp;
                        Fin de la formation :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ strftime("%d %B %Y", strtotime($stag_info->stag_date_fin)) }}</span>
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-certificate" style="color: #036b75!important;"></li>&nbsp;
                        État  :
                        </p>
                    </div>

                    <div class="col-md-5">
                        @if(($stag_info->stag_validation == 'certifie' ))
                        <p class="card-title">
                            <span class="text-success" style="font-family: 'Manjari Bold'">Certifié Mase</span>
                        </p>
                        @else
                        <p class="card-title">
                            <span class="text-danger" style="font-family: 'Manjari Bold'">Non certifié Mase</span>
                        </p>
                        @endif
                    </div>
                </div>
                @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                || Session::get('admin_role')== 3
                && Session::get('admin_structure')== $stag_info->stag_structure &&  $stag_info->stag_validation == 'non certifie' )
                <div class="row">
                    <div class="col-md-12">
                        @if( Session::get('admin_role')==1 )
                        @if($stag_info->stag_validation == 'certifie')
                        <a href="{{ URL::to('/unvalide-stag/'.
                              $stag_info->stag_id)}}"id="md." class="btn btn-primary pull-right">
                            <i class="material-icons">thumb_down_alt</i>
                            Non certifié </a>&nbsp;
                        @else
                        <a href="{{ URL::to('/valide-stag/'.
                              $stag_info->stag_id)}}" id="md." class="btn btn-info pull-right">
                            <i class="material-icons">thumb_up</i>
                            Certifier </a>&nbsp;
                        @endif
                        @endif
                        <a href="{{ URL::to('/edit-stag/'.
                        $stag_info->stag_id)}}"  id="md." class="btn btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;

                    </div>
                </div>
                @endif
            </div>
        </div>

    </div>

</div>

@endsection
