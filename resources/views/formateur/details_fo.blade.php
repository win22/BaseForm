@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') == 4)
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
                    <h4 class="card-title">Formateur <i class="fa fa-user"></i></h4>
                    <p class="card-category">Afficher les détails d'un formateur </p>
                </div>
                <div class="col-md-6">
                    <img class="img" style="width: 96px; height : 96px; border-radius: 100px" src="{{URL::to($form_info->form_image)}}" />
                </div>

            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-user" style="color: #046b76!important;"></li>&nbsp;
                                Nom :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_name }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-user" style="color: #046b76!important;"></li>&nbsp;
                                Prénom :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_prenom }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-envelope" style="color: #046b76!important;"></li>&nbsp;
                                Adresse e-mail :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_email }}</span>
                                </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-map-marker" style="color: #046b76!important;"></li>&nbsp;
                                Adresse :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_adresse }}</span>
                                </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-phone" style="color: #046b76!important;"></li>&nbsp;
                                Téléphone :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_phone }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-intersex" style="color: #046b76!important;"></li>&nbsp;
                                Sexe :
                                </p>
                            </div>
                            <div class="col-md-6">
                                @if($form_info->form_sexe == 1)
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
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-phone" style="color: #046b76!important;"></li>&nbsp;
                                Formation :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_formation }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-certificate" style="color: #046b76!important;"></li>&nbsp;
                                État  :
                                </p>
                            </div>

                            <div class="col-md-6">
                                @if($form_info->form_etat == 'agrée' )
                                <p class="card-title">
                                    <span class="text-success" style="font-family: 'Manjari Bold'">Agréé par Mase</span>
                                </p>
                                @else
                                <p class="card-title">
                                    <span class="text-danger" style="font-family: 'Manjari Bold'">Non agréé par Mase</span>
                                </p>
                                @endif
                            </div>
                        </div>
                        @if($form_info->form_of)
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-home" style="color: #046b76!important;"></li>&nbsp;
                                Organisme de formation
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $form_info->form_of }}</span>
                                </p>
                            </div>
                        </div>
                        @endif
                        @if(Session::get('admin_role') == 1)
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-circle" style="color: #046b76!important;"></li>&nbsp;
                                Status  :
                                </p>
                            </div>

                            <div class="col-md-6">
                                @if($form_info->form_status == 1)
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
                        @if( Session::get('admin_role')==1 || Session::get('admin_role')==2 )
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b76!important;"></li>&nbsp;
                                Début de la formation :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ strftime("%d %B %Y", strtotime( $form_info->form_date_debut)) }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b76!important;"></li>&nbsp;
                                Fin de la formation :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{  strftime("%d %B %Y", strtotime($form_info->form_date_fin)) }}</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    @if($form_info->form_etat == 'agrée')
                    <div class="col-md-4">
                        <div class="col-md-6">
                            <img class="img" style=" width: 256px; height : 256px; " src="{{URL::to('image/cer.png')}}" />
                        </div>
                    </div>
                    @endif
                </div>

                @endif
                @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                || Session::get('admin_role')== 4
                && Session::get('admin_structure')== $form_info->form_of
                && $form_info->form_etat == 'non agréé'
                )
                <div class="row">
                    <div class="col-md-12">

                        @if( Session::get('admin_role')==1 )
                        @if($form_info->form_etat == 'agrée')
                        <a href="{{ URL::to('/unvalide-form/'.
                              $form_info->form_id)}}"id="md." class="btn btn-danger pull-right">
                            <i class="material-icons">thumb_down_alt</i>
                            Retirer l'agrément </a>&nbsp;
                        @else
                        <a href="{{ URL::to('/valide-form/'.
                              $form_info->form_id)}}" id="md." class="btn btn-info pull-right">
                            <i class="material-icons">thumb_up</i>
                            Agréer </a>&nbsp;
                        @endif
                        @endif
                        <a href="{{ URL::to('/edit-form/'.
                        $form_info->form_id)}}"  id="md." class="btn btn-warning pull-right">
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

@endif
@endsection