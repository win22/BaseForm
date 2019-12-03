@extends('admin_layout')
@section('contenu')

<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Evenement  <i class="fa fa-calendar"></i></h4>
                <p class="card-category">Afficher les détails d'un evenement</p>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-crop" style="color: #036b75!important;"></li>&nbsp;
                        Nom :
                        </p>
                    </div>
                    <div class="col-md-8">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $even_info->even_name }}</span>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <p class="card-title">
                        <li class="fa fa-bookmark" style="color: #036b75!important;"></li>&nbsp;
                        Description du Contenu :
                        </p>
                    </div>
                    <div class="col-md-8">
                        <p class="text-justify card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $even_info->even_description }}</span>
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
                    <div class="col-md-8">
                        <p class="card-title">
                            <span style="font-family: 'Manjari Bold'"> {{ $even_info->created_at }}</span>
                        </p>
                    </div>
                </div>

                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-even/'.
                        $even_info->even_id)}}"  id="md." class="btn btn-warning pull-right">
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