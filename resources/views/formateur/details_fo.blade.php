@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('admin_role') == 3)
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
                                <li class="fa fa-intersex" style="color: #046b76!important;"></li>&nbsp;
                                Sexe :
                                </p>
                            </div>
                            <div class="col-md-6">

                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'">{{ $form_info->form_sexe }}</span>
                                </p>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-calendar" style="color: #046b76!important;"></li>&nbsp;
                                Date de Naissance :
                                </p>
                            </div>
                            <div class="col-md-6">

                                <p class="card-title">
                                    <span class="text-info" style="font-family: 'Manjari Bold'">{{strftime("%d %B %Y", strtotime( $form_info->form_date_naiss  ))}}</span>
                                </p>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-map-o" style="color: #046b76!important;"></li>&nbsp;
                                Lieu de naissance :
                                </p>
                            </div>
                            <div class="col-md-6">

                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'">{{ $form_info->form_lieu_naiss }}</span>
                                </p>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-address-card" style="color: #046b76!important;"></li>&nbsp;
                                Type de Piece :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_type_piece }}</span>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-edit" style="color: #046b76!important;"></li>&nbsp;
                                Numero de la piece :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_num_piece }}</span>
                                </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="card-title">
                                <li class="fa fa-intersex" style="color: #046b76!important;"></li>&nbsp;
                                Situation matrimoniale  :
                                </p>
                            </div>
                            <div class="col-md-6">
                                <p class="card-title">
                                    <span style="font-family: 'Manjari Bold'"> {{ $form_info->form_situa }}</span>
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
                                <li class="fa fa-graduation-cap" style="color: #046b76!important;"></li>&nbsp;
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

                        @if( $form_info->form_date_debut)
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
                        @endif
                        @if( $form_info->form_date_fin)
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
                        @endif
                        <div class="row">

                                <div class="col-md-12">
                                    <p class="card-title">
                                    <li class="fa fa-hand-o-up" style="color: #036b75!important;"></li>&nbsp;
                                    <a href="#" data-toggle="modal" data-target=".bd-example-modal-lg">
                                        Cliquer ici  <span style="color: black !important;"> afin de voir les autres agréments de {{ $form_info->form_name }}</span>
                                    </a>

                                    </p>
                                </div>

                            </div>
                        </div>

                    @if($form_info->form_etat == 'agrée')
                    <div class="col-md-3" style="padding-top: 140px; padding-right: 190px">
                        <div class="col-md-6">
                            <img class="img" style=" width: 236px; height : 216px; " src="{{URL::to('image/agre.png')}}" />
                        </div>
                    </div>
                    @endif
                    </div>



                @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                || Session::get('user_role')== 3
                && Session::get('admin_structure')== $form_info->form_of
                && $form_info->form_etat =='non'
                )
                <div class="row">
                    <div class="col-md-12">
                        @if( Session::get('admin_role')==1 )
                        @if($form_info->form_etat == 'agrée')
                        <a href="{{ URL::to('/unvalide-form/'.
                              $form_info->form_id)}}"id="md." class="btn btn-danger btn-sm pull-right">
                            <i class="material-icons">thumb_down_alt</i>
                            Retirer l'agrément </a>&nbsp;&nbsp;
                        @else
                        <a href="{{ URL::to('/valide-form/'.
                              $form_info->form_id)}}" id="md." class="btn btn-sm  btn-success pull-right">
                            <i class="material-icons">thumb_up</i>
                            Agréer </a>&nbsp;&nbsp;
                        @endif
                        @endif
                        <a  data-toggle="modal" data-target="#exampleModal" href="{{ URL::to('/edit-form/'.
                        $form_info->form_id)}}"  id="md." class="btn btn-sm  btn-info pull-right">
                            <i class="material-icons">add</i>&nbsp;
                            Ajouter une nouvelle formation
                        </a>&nbsp;&nbsp;
                        <a href="{{ URL::to('/edit-form/'.
                        $form_info->form_id)}}"  id="md." class="btn btn-sm  btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;&nbsp;


                    </div>

                </div>
                @endif
            </div>
        </div>
    </div>
    </div>
    <div class="modal fade small" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <form  action="{{ url('/save-form_of')}}" method="post" >
            @csrf
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background: #00acc1">
                        <h5 class="modal-title text-white" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Nouvelle formation pour <span class="text-white">{{$form_info->form_prenom }} {{ $form_info->form_name }}</span></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div hidden class="form-group">
                            <select  class="form-control" name="form_token">
                                <option class="text-success" value="{{ $form_info->form_token }}">{{ $form_info->form_token }}</option>
                            </select>
                        </div>

                        <div hidden class="form-group">
                            <select  class="form-control" name="form_name">
                                <option class="text-success" value="{{ $form_info->form_name }}">{{ $form_info->form_name }}</option>
                            </select>
                        </div>
                        <div hidden class="form-group">
                            <select  class="form-control" name="form_prenom">
                                <option class="text-success" value="{{ $form_info->form_prenom }}">{{ $form_info->form_prenom }}</option>
                            </select>
                        </div>
                        <div hidden class="form-group">
                            <select  class="form-control" name="form_adresse">
                                <option class="text-success" value="{{ $form_info->form_adresse }}">{{ $form_info->form_adresse }}</option>
                            </select>
                        </div>
                        <div hidden class="form-group">
                            <select  class="form-control" name="form_phone">
                                <option class="text-success" value="{{ $form_info->form_phone }}">{{ $form_info->form_phone }}</option>
                            </select>
                        </div>
                        <div hidden class="form-group">
                            <select  class="form-control" name="form_email">
                                <option class="text-success" value="{{ $form_info->form_email }}">{{ $form_info->form_email }}</option>
                            </select>
                        </div>
                        <div hidden class="form-group">
                            <select  class="form-control" name="form_sexe">
                                <option value="{{ $form_info->form_sexe }}">{{ $form_info->form_sexe }} </option>
                            </select>
                        </div>
                        <div hidden class="form-group">
                            <select  class="form-control" name="form_of">
                                <option class="text-success" value="{{ $form_info->form_of }}">{{ $form_info->form_of }}</option>
                            </select>
                        </div>

                        <div  class="form-group">
                            <select  class="form-control" name="form_certi">
                                <option  value="2">Deuxieme formation</option>
                                <option  value="3">Troisieme formation</option>
                                <option  value="4">Quatrieme formation</option>
                                <option  value="5">Cinquieme formation</option>
                            </select>
                        </div>
                        <div  class="form-group">
                            <select  class="form-control" name="form_formation">
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
                        @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                        <div  class="form-group">
                            <label class="label">Début de la formation <span  class="text-danger">*</span></label>
                            <input type="date" class="form-control text-success" min="1800-08-13" name="form_date_debut">
                            @if($errors->has('form_date_debut'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_date_debut')}}</small>
                            @endif
                        </div>
                        <div  class="form-group">
                            <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                            <input type="date" class="form-control text-danger" min="1800-08-13" name="form_date_fin">
                            @if($errors->has('form_date_fin'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_date_fin')}}</small>
                            @endif
                        </div>
                        @endif
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-sm btn-info">Enregistrer </button>
                        <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">Fermer</button>
                    </div>
                </div>
            </div>
        </form>
    </div>

<div class="modal fade bd-example-modal-lg small" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #064b44 !important;">
                <h5 class="modal-title text-white" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Autres formations de <span class="text-warning">
                        {{ $form_info->form_prenom }}
                        {{ $form_info->form_name }}</span></h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead class="text-center text-danger">

                        <th>Formation </th>
                        <th>Début de la formation </th>
                        <th>Fin de la formation </th>
                        <th>État </th>

                        <th>Actions</th>
                        </thead>
                        <tbody class="text-center">
                        @foreach ( $all_form_info as $v_form)
                        <tr>
                            <td  style="font-family: 'Manjari Bold'">{{ $v_form->form_formation }}</td>
                            <td class="center">{{  strftime("%d %B %Y", strtotime($v_form->form_date_debut)) }}</td>
                            <td class="center">{{  strftime("%d %B %Y", strtotime($v_form->form_date_fin)) }}</td>
                            <td class="text-center">
                                @if($v_form->form_etat=='agrée')
                                <span class="label" style="font-family: 'Manjari Bold'; color: rgba(5,175,90,0.88);">
                             Agréé
                        </span>
                                @else
                                <span class="label" style="font-family: 'Manjari Bold'; color: rgba(233,50,13,0.88);">
                            Non agréé
                        </span>
                                @endif
                            </td>
                            <td class="td-actions">

                                @if( Session::get('admin_role')==1)
                                @if($v_form->form_etat=='agrée')
                                <a class="btn btn-primary btn-link btn-sm"  rel="tooltip" title="Retirer l'agrément " href="{{ URL::to('/unvalide-form/'.
                              $v_form->form_id)}}">
                                    <i class="material-icons">thumb_down_alt</i>
                                </a>
                                @else
                                <a class="btn btn-success btn-link btn-sm"  rel="tooltip" title="Agrée "
                                   href="{{ URL::to('/valide-form/'.
                              $v_form->form_id)}}"
                                >
                                    <i class="material-icons">thumb_up</i>
                                </a>
                                @endif
                                @endif
                                @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                                || Session::get('user_role')== 3
                                && Session::get('admin_structure')== $v_form->form_of
                                && $v_form->form_etat == 'non' )
                                <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-form2/'.
                                 $v_form->form_id)}}">
                                    <i class="material-icons">edit</i>
                                </a>
                                <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-form/'.
                                 $v_form->form_id)}}" id="delete">
                                    <i class="material-icons">close</i>
                                </a>
                                @else
                                <img  style=" height: 60px; width: 70px; border-radius: 15px;" src="{{URL::to('image/cer.png')}}" />
                                @endif
                            </td>
                        </tr>
                        @endforeach
                        </tbody>
                    </table>

                    <p  id="total_records">
                        @if($nb>0)
                        Total des informations : <span id="total_records">{{ $nb }}</span>
                    </p>
                    @else
                    <p class="text-center">Aucune information n'a été trouvée</p>
                    @endif

                    {{ $all_form_info->links() }}
                </div>
            </div>

        </div>
    </div>
</div>

@endif
@endsection
