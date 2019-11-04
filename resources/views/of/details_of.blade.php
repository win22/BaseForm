@extends('admin_layout')
@section('contenu')

<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Organisme de formations <i class="material-icons greenI">bubble_chart</i></h4>
                <p class="card-category">Afficher les détails d'une organisme de formation</p>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-industry" style="color: #036b75!important;"></li>&nbsp;
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
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-envelope" style="color: #036b75!important;"></li>&nbsp;
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
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-phone" style="color: #036b75!important;"></li>&nbsp;
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
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-map-marker " style="color: #036b75!important;"></li>&nbsp;
                        Adresse :
                        </p>
                    </div>
                    <div class="col-md-5">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->of_adresse }}</span>
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
                            <span style="font-family: 'Manjari Bold'"> {{ $of_info->created_at }}</span>
                        </p>
                    </div>
                </div>
                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-of/'.
                        $of_info->of_id)}}"  id="md." class="btn btn-warning pull-right">
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