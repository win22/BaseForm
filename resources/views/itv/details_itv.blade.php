@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info row">
                <div class="col-md-6">
                    <h4 class="card-title">Intervenant <i class="fa fa-user"></i></h4>
                    <p class="card-category">Afficher les détails d'un intervenant </p>
                </div>
                <div class="col-md-6">
                    <img class="img" style="width: 95px; height : 95px; border-radius: 100px" src="{{URL::to($itv_info->itv_image)}}" />
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
                            <span style="font-family: 'Manjari Bold'"> {{ $itv_info->itv_name }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $itv_info->itv_prenom }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-circle" style="color: #036b75!important;"></li>&nbsp;
                        Sexe  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        @if($itv_info->itv_sex == 1)
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
                        <li class="fa fa-crop" style="color: #036b75!important;"></li>&nbsp;
                        Entreprise Intervenante:
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $itv_info->itv_ei }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-map" style="color: #036b75!important;"></li>&nbsp;
                        Lieu de naissance  :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $itv_info->itv_Lieu_naiss }}</span>
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-calendar" style="color: #036b75!important;"></li>&nbsp;
                        Date de naissance :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $itv_info->itv_date_naiss }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-itv/'.
                        $itv_info->itv_id)}}"  id="md." class="btn btn-warning pull-right">
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