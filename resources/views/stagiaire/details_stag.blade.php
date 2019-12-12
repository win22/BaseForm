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
                    <img class="img" style="width: 96px; height : 96px; border-radius: 100px" src="{{URL::to($stag_info->stag_image)}}" />
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
                                    <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_name }}</span>
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
                                    <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_prenom }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-intersex" style="color: #046b76!important;"></li>&nbsp;
                                Sexe  :
                                </p>
                            </div>
                            <div class="col-md-6">
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
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-envelope" style="color: #046b76!important;"></li>&nbsp;
                                Adresse e-mail :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_email }}</span>
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
                                    <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_phone }}</span>
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
                                    <span style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_adresse }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-home" style="color: #046b76!important;"></li>&nbsp;
                                Organisme de formation  :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span class="text-warning" style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_structure }}</span>
                                </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-graduation-cap" style="color: #046b76!important;"></li>&nbsp;
                                Formation  :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <span class="text-info" style="font-family: 'Manjari Bold'"> {{ $stag_info->stag_formation }}</span>
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
                                @if(($stag_info->stag_etat == 'agrée' ))
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

                        @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-circle" style="color: #046b76!important;"></li>&nbsp;
                                Status  :
                                </p>
                            </div>
                            <div class="col-md-6">
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
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b76!important;"></li>&nbsp;
                                Début de la formation :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ strftime("%d %B %Y", strtotime($stag_info->stag_date_debut)) }}</span>
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
                                    <span style="font-family: 'Manjari Bold'"> {{ strftime("%d %B %Y", strtotime($stag_info->stag_date_fin)) }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-12">
                                <p class="card-title">
                                <li class="fa fa-hand-o-up" style="color: #036b75!important;"></li>&nbsp;
                                <a href="#" data-toggle="modal" data-target=".bd-example-modal-lg">
                                    Cliquer ici <span style="color: black !important;">afin de voir les autres certification de l'apprenant  {{ $stag_info->stag_name }}</span>
                                </a>

                                </p>
                            </div>

                        </div>
                    </div>

                    @if($stag_info->stag_etat == 'agrée')
                    <div class="col-md-3" style="padding-top: 140px; padding-right: 200px">
                        <div class="col-md-6">
                            <img class="img" style=" width: 236px; height : 216px; " src="{{URL::to('image/cer.png')}}" />
                        </div>
                    </div>
                    @endif

                </div>




                @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                || Session::get('admin_role')== 3
                && Session::get('admin_structure')== $stag_info->stag_structure &&  $stag_info->stag_etat == 'non' )
                <div class="row">
                    <div class="col-md-12">
                        @if( Session::get('admin_role')==1 )
                        @if($stag_info->stag_etat == 'agrée')
                        <a href="{{ URL::to('/unvalide-stag/'.
                              $stag_info->stag_id)}}"id="md." class="btn btn-sm btn-danger pull-right">
                            <i class="material-icons">thumb_down_alt</i>
                            Non certifié </a>&nbsp;
                        @else
                        <a href="{{ URL::to('/valide-stag/'.
                              $stag_info->stag_id)}}" id="md." class="btn btn-sm btn-success pull-right">
                            <i class="material-icons">thumb_up</i>
                            Certifier </a>&nbsp;
                        @endif
                        @endif
                        <a  data-toggle="modal" data-target="#exampleModal" href="{{ URL::to('/edit-stag/'.
                        $stag_info->stag_id)}}"  id="md." class="btn btn-sm  btn-info pull-right">
                            <i class="material-icons">add</i>&nbsp;
                            Ajouter une nouvelle formation
                        </a>&nbsp;
                        <a href="{{ URL::to('/edit-stag/'.
                        $stag_info->stag_id)}}"  id="md." class="btn btn-sm btn-warning pull-right">
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
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form  action="{{ url('/save-stag-fo')}}" method="post" >
        @csrf
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Nouvelle formation pour <span class="text-warning">{{ $stag_info->stag_name }}</span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_token">
                            <option class="text-success" value="{{ $stag_info->stag_token }}">{{$stag_info->stag_token }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_etat">
                            <option class="text-success" value="{{ $stag_info->stag_etat }}">{{ $stag_info->stag_etat }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_name">
                            <option class="text-success" value="{{ $stag_info->stag_name }}">{{$stag_info->stag_name }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_prenom">
                            <option class="text-success" value="{{ $stag_info->stag_prenom }}">{{ $stag_info->stag_prenom }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_adresse">
                            <option class="text-success" value="{{ $stag_info->stag_adresse }}">{{ $stag_info->stag_adresse}}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_phone">
                            <option class="text-success" value="{{ $stag_info->stag_phone }}">{{ $stag_info->stag_phone }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_email">
                            <option class="text-success" value="{{ $stag_info->stag_email }}">{{ $stag_info->stag_email }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_sexe">
                            @if($stag_info->stag_sexe == 1)
                            <option value="{{ $stag_info->stag_sexe }}">Homme </option>
                            @else
                            <option value="{{ $stag_info->stag_sexe }}">Femme </option>
                            @endif
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_structure">
                            <option class="text-success" value="{{ $stag_info->stag_structure }}">{{ $stag_info->stag_structure }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_formateur">
                            <option class="text-success" value="{{ $stag_info->stag_formateur }}">{{ $stag_info->stag_formateur }}</option>
                        </select>
                    </div>

                    <div  class="form-group">
                        <select  class="form-control" name="stag_certi">
                            <option  value="2">Deuxieme formation</option>
                            <option  value="3">Troisieme formation</option>
                            <option  value="4">Quatrieme formation</option>
                            <option  value="5">Cinquieme formation</option>
                        </select>
                    </div>
                    <div  class="form-group">
                        <select  class="form-control" name="stag_formation">
                            <option class="text-warning" value="">Selectionner une formation <span  class="text-danger">*</span></option>
                            @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                            @foreach($FORMT_all as $v_formt)
                            <option value="{{ $v_formt->formt_name }}" >
                                {{ $v_formt->formt_name }}
                            </option>
                            @endforeach
                            @else
                            @foreach($FORM as $v_format)
                            <option value="{{ $v_format->of_formation }}" >
                                {{ $v_format->of_formation }}
                            </option>
                            @endforeach
                            @endif
                        </select>
                    </div>

                    <div  class="form-group">
                        <label class="label">Début de la formation <span  class="text-danger">*</span></label>
                        <input type="date" class="form-control text-success" min="1800-08-13" name="stag_date_debut">
                        @if($errors->has('stag_date_debut'))
                        <small class="form-text text-muted text-danger">{{$errors->first('stag_date_debut')}}</small>
                        @endif
                    </div>
                    <div  class="form-group">
                        <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                        <input type="date" class="form-control text-danger" min="1800-08-13" name="stag_date_fin">
                        @if($errors->has('stag_date_fin'))
                        <small class="form-text text-muted text-danger">{{$errors->first('stag_date_fin')}}</small>
                        @endif
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-sm btn-info">Enregistrer </button>
                    <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">Fermer</button>
                </div>
            </div>
        </div>
    </form>
</div>
@endsection
