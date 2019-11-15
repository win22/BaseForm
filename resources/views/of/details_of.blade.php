@extends('admin_layout')
@section('contenu')

<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Organisme de formations <i class="material-icons greenI">bubble_chart</i></h4>
                <p class="card-category">Afficher les détails d'un organisme de formation</p>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="material-icons" style="color: #046b75!important;">bubble_chart </li>&nbsp;
                        Raison social :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->name }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->of_email }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="fa fa-certificate" style="color: #046b75!important;"></li>&nbsp;
                            Etat:
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            @if($of_info->of_etat=='agrée')
                            <span class="text-success" style="font-family: 'Manjari Bold'"> Agrée Mase</span>
                            @else
                            <span class="text-danger" style="font-family: 'Manjari Bold'">Non agrée </span>
                            @endif
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                            <i class="fa fa-graduation-cap" style="color: #046b75!important;"></i>
                            Formations :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $of_info->of_formation }}</span>
                        </p>
                    </div>
                </div>
                @if( $of_info->of_date_ad)
                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="fa fa-calendar" style="color: #046b75!important;"></li>&nbsp;
                        Date d'adhésion   :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->of_date_ad }}</span>
                        </p>
                    </div>
                </div>
                @endif
                @if($of_info->of_time)
                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="fa fa-clock-o" style="color: #046b75!important;"></li>&nbsp;
                         Durée de la certification :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $of_info->of_time }}</span>
                        </p>
                    </div>
                </div>
                @endif



                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="fa fa-phone" style="color: #046b75!important;"></li>&nbsp;
                        Téléphone :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->of_phone }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->of_adresse }}</span>
                        </p>
                    </div>
                </div>
                @if( $of_info->of_date_debut)
                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="fa fa-calendar" style="color: #046b75!important;"></li>&nbsp;
                        Date de debut d'agreement  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->of_date_debut }}</span>
                        </p>
                    </div>
                </div>
                @endif
                @if( $of_info->of_date_fin)
                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="fa fa-calendar" style="color: #046b75!important;"></li>&nbsp;
                        Date de fin d'agreement  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'" class="text-danger"> {{ $of_info->of_date_fin }}</span>
                        </p>
                    </div>
                </div>
                @endif
                @if($of_info->of_etat == 'agrée')
                <div class="row">
                    <div class="col-md-5">
                        <p class="card-title">
                        <li class="fa fa-eye" style="color: #036b75!important;"></li>&nbsp;
                        <a href="{{ URL::to('/all-agre-of/'.
                        $of_info->name)}}">
                            Voir les autres agréments de {{ $of_info->name }}
                        </a>

                        </p>
                    </div>
                </div>
                @endif
                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <div class="row">
                    <div class="col-md-4">
                        <p class="card-title">
                        <li class="fa fa-certificate" style="color: #046b75!important;"></li>&nbsp;
                        Status:
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            @if($of_info->of_status == 1)
                            <span class="text-success" style="font-family: 'Manjari Bold'"> Activé </span>
                            @else
                            <span class="text-danger" style="font-family: 'Manjari Bold'">Désactivé </span>
                            @endif
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        @if(($of_info->of_certi) == 1)
                        <a href="{{ URL::to('/edit-of/'.
                        $of_info->of_id)}}"  id="md." class="btn btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;
                        @endif

                        @if(($of_info->of_certi) >=2)
                        <a href="{{ URL::to('/edit-agre-of/'.
                        $of_info->of_id)}}"  id="md." class="btn btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;
                        @endif

                        @if(($of_info->of_certi) == 1)
                        <a href="{{ URL::to('/add-agre-of/'.
                        $of_info->of_id)}}"  id="md." class="btn btn-info pull-right">
                            <i class="material-icons">add</i>&nbsp;
                            Ajouter un agrément
                        </a>&nbsp;
                        @endif
                    </div>

                </div>
                @endif
            </div>
        </div>

    </div>

</div>

@endsection