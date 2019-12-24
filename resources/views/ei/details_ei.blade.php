@extends('admin_layout')
@section('contenu')

<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Entreprise intervenantes   <i class="fa fa-crop"></i></h4>
                <p class="card-category">Afficher les détails d'une entreprise intervenante</p>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-crop" style="color: #046b75!important;"></li>&nbsp;
                                Nom :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $ei_info->name }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-envelope" style="color: #046b75!important;"></li>&nbsp;
                                Adresse e-mail :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_email }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-phone" style="color: #046b75!important;"></li>&nbsp;
                                Téléphone :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_phone }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-map-marker " style="color: #046b75!important;"></li>&nbsp;
                                Adresse :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_adresse }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-user" style="color: #046b75!important;"></li>&nbsp;
                                Directeur :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_nameDi }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-external-link" style="color: #046b75!important;"></li>&nbsp;
                                Secteir d'activité :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_secteurA }}</span>
                                </p>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-industry" style="color: #046b75!important;"></li>&nbsp;
                                Entreprise Utilsatrice Principale :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    @if( $ei_info->ei_eu)
                                    <span class="text-info" style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_eu }}</span>
                                    @else
                                    <span class="text-warning" style="font-family: 'Manjari Bold'">Aucune entreprise</span>
                                    @endif
                                </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-industry" style="color: #046b75!important;"></li>&nbsp;
                                Autres  Entreprises Utilsatrices :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    @if( $ei_info->ei_eu)
                                    <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_a_eu }}</span>
                                    @else
                                    <span class="text-warning" style="font-family: 'Manjari Bold'">Aucune entreprise</span>
                                    @endif
                                </p>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b75!important;"></li>&nbsp;
                                Date d'adhésion :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span class="text-info" style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_date_ad }}</span>
                                </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-certificate" style="color: #036b75!important;"></li>&nbsp;
                                État  :
                                </p>
                            </div>

                            <div class="col-md-5">
                                @if(($ei_info->ei_etat == 'agrée' ))
                                <p class="card-title">
                                    <span class="text-success" style="font-family: 'Manjari Bold'">Certifié Mase</span>
                                </p>
                                @else
                                <p class="card-title">
                                    <span class="text-warning" style="font-family: 'Manjari Bold'">En démarche</span>
                                </p>
                                @endif
                            </div>
                        </div>

                        @if($ei_info->ei_time)
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b75!important;"></li>&nbsp;
                                Duré de la certication :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_time }}</span>
                                </p>
                            </div>
                        </div>
                        @endif
                        @if($ei_info->ei_date_debut)
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b75!important;"></li>&nbsp;
                                Début de la certification :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span class="text-success" style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_date_debut }}</span>
                                </p>
                            </div>
                        </div>
                        @endif
                        @if($ei_info->ei_date_fin)
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b75!important;"></li>&nbsp;
                                Fin de la certification :
                                </p>
                            </div>
                            <div class="col-md-5">
                                <p class="card-title">
                                    <span class="text-danger" style="font-family: 'Manjari Bold'"> {{ $ei_info->ei_date_fin  }}</span>
                                </p>
                            </div>
                        </div>
                        @endif
                        @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-circle" style="color: #046b75!important;"></li>&nbsp;
                                Status  :
                                </p>
                            </div>
                            <div class="col-md-5">
                                @if($ei_info->ei_status == 1)
                                <p class="card-title">
                                    <span class="text-success" style="font-family: 'Manjari Bold'">Activé</span>
                                </p>
                                @else
                                <p class="card-title">
                                    <span class="text-danger" style="font-family: 'Manjari Bold'">Désactivé</span>
                                </p>
                                @endif
                            </div>
                        </div>
                        @endif
                    </div>
                    @if($ei_info->ei_etat == 'agrée')
                    <div class="col-md-3" style="padding-top: 140px; padding-right: 200px">
                        <div class="col-md-6">
                            <img class="img" style=" width: 236px; height : 216px; " src="{{URL::to('image/cer.png')}}" />
                        </div>
                    </div>
                    @endif
                </div>

                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-ei/'.
                        $ei_info->ei_id)}}"  id="md." class="btn btn-warning pull-right">
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