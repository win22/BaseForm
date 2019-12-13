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

            <div class="card-header card-header-info">
                <h4 class="card-title">Organisme de formations <i class="material-icons greenI">bubble_chart</i></h4>
                <p class="card-category">Afficher les détails d'un organisme de formation</p>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-md-8">
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
                        @if( $of_info->of_formation)
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
                        @endif
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
                                    <span style="font-family: 'Manjari Bold'"> {{ strftime("%d %B %Y", strtotime($of_info->of_date_ad)) }}</span>
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
                                    <span class="text-info" style="font-family: 'Manjari Bold'"> {{ strftime("%d %B %Y", strtotime($of_info->of_date_debut)) }}</span>
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
                                    <span style="font-family: 'Manjari Bold'" class="text-danger"> {{  strftime("%d %B %Y", strtotime($of_info->of_date_fin)) }}</span>
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
                        @endif
                        @if($of_info->of_etat == 'agrée')
                        <div class="row">
                            <div class="col-md-6">
                                <p class="card-title">
                                <li class="fa fa-hand-o-up" style="color: #036b75!important;"></li>&nbsp;
                                <a data-toggle="modal" data-target=".bd-example-modal-lg" >
                                    Cliquer ici <span style="color: black!important;">pour voir d'autres agréments </span>
                                </a>

                                </p>
                            </div>

                        </div>
                        @endif
                    </div>

                    @if($of_info->of_etat=='agrée')
                    <div class="col-md-3" style="padding-top: 140px; padding-right: 190px">
                        <img class="img" style="width: 230px; height : 190px; " src="{{URL::to('image/cer.png')}}" />
                    </div>
                    @endif
                </div>

                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <div class="row">
                    <div class="col-md-12">
                        @if(($of_info->of_certi) <=1)
                        <a href="{{ URL::to('/edit-of/'.
                        $of_info->of_id)}}"  id="md." class="btn btn-sm btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;
                        @endif

                        @if(($of_info->of_certi) >=2)
                        <a href="{{ URL::to('/edit-agre-of/'.
                        $of_info->of_id)}}"  id="md." class="btn btn-sm btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;
                        @endif

                        @if($of_info->of_etat == 'agrée')
                        <a  data-target="#exampleModal"  data-toggle="modal"  id="md." class="btn btn-sm btn-info pull-right">
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

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form  action="{{ url('/save-agree')}}" method="post" >
        @csrf
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Ajout d'un nouvel agrément <span class="text-warning">{{ $of_info->name }}</span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div hidden class="form-group">
                        <select  class="form-control" name="name">
                            <option class="text-success" value="{{ $of_info->name }}">{{ $of_info->name }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_adresse">
                            <option class="text-success" value="{{ $of_info->of_adresse }}">{{ $of_info->of_adresse }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_email">
                            <option class="text-success" value="{{ $of_info->of_email }}">{{ $of_info->of_email }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_tok">
                            <option class="text-success" value="{{ $of_info->of_tok}}">{{ $of_info->of_tok }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="user_role">
                            <option class="text-success" value="{{ $of_info->user_role }}">{{ $of_info->user_role }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_phone">
                            <option class="text-success" value="{{ $of_info->of_phone }}">{{ $of_info->of_phone }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_etat">
                            <option class="text-success" value="agrée">Agrée Mase </option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_date_ad">
                            <option class="text-success" value="{{ $of_info->of_date_ad }}">
                                {{  strftime("%d %B %Y", strtotime($of_info->of_date_ad)) }}</option>
                        </select>
                    </div>
                    <div  class="form-group">
                        <select  class="form-control" name="of_certi">
                            <option  value="2">Deuxieme agrément</option>
                            <option  value="3">Troisieme agrément</option>
                            <option  value="4">Quatrieme agrément</option>
                            <option  value="5">Cinquieme agrément</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select  class="form-control" name="of_formation">
                            <option class="text-warning" value="">Selectionner une formation  <span  class="text-danger">*</span></option>
                            @foreach($OF as $v_of)
                            <option value="{{ $v_of->formt_name }}" >
                                {{ $v_of->formt_name	 }}
                            </option>
                            @endforeach
                            @if($errors->has('of_formation'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_formation')}}</small>
                            @endif
                        </select>
                    </div>

                    <div  class="form-group">
                        <label class="label">Date de début</label>
                        <input type="date" class="form-control text-success" min="1800-08-13" name="of_date_debut">
                        @if($errors->has('of_date_debut'))
                        <small class="form-text text-muted text-danger">{{$errors->first('of_date_debut')}}</small>
                        @endif
                    </div>
                    <div  class="form-group">
                        <label class="label">Date de fin d'agrément <span  class="text-danger">*</span></label>
                        <input type="date" class="form-control text-danger" min="1800-08-13" name="of_date_fin">
                        @if($errors->has('of_date_fin'))
                        <small class="form-text text-muted text-danger">{{$errors->first('of_date_fin')}}</small>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Durée de l'agrément  </label>
                        <input name="of_time" type="text" class="form-control">
                        @if($errors->has('of_time'))
                        <small class="form-text text-muted text-danger">{{$errors->first('of_time')}}</small>
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
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Autres agréments de <span class="text-warning">{{ $of_info->name }}</span></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead class=" text-danger">

                        <th class="text-center">Formation</th>
                        <th class="text-center">Début </th>
                        <th class="text-center">Fin </th>
                        <th class="text-center">État</th>
                        @if( Session::get('admin_role')==1)
                        <th class="text-center">Status</th>
                        @endif
                        <th class="text-center">Action</th>


                        </thead>


                        <tbody>
                        @foreach ( $all_of_info as $v_of)
                        <tr>
                            <td style="font-family: 'Manjari Bold'" class="text-center">{{ $v_of->of_formation }}</td>
                            <td class="center">{{  strftime("%d %B %Y", strtotime($v_of->of_date_debut)) }}</td>
                            <td class="center">{{  strftime("%d %B %Y", strtotime($v_of->of_date_fin)) }}</td>
                            <td class="text-center">
                                @if($v_of->of_etat=='agrée')
                                <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Agrée Mase <i class="fa fa-certificate"></i>
                        </span>
                                @else
                                <span class="label" style="font-family: 'Manjari Bold'; color: rgba(191,29,3,0.88);">
                            Non agrée
                        </span>
                                @endif
                            </td>
                            @if( Session::get('admin_role')==1)
                            <td class="text-center">
                                @if($v_of->of_status==1)
                                <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Activé
                        </span>
                                @else
                                <span class="label" style="font-family: 'Manjari Bold'; color: rgba(233,32,3,0.88);">
                            Desactivé
                        </span>
                                @endif
                            </td>
                            @endif
                            <td  class="td-actions text-center">
                                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                @if($v_of->of_status==1)
                                <a class="btn btn-primary btn-link btn-sm"  rel="tooltip" title="Désactiver" href="{{ URL::to('/unactive-of/'.
                        $v_of->of_id)}}">
                                    <i class="material-icons">thumb_down_alt</i>
                                </a>
                                @else
                                <a class="btn btn-success btn-link btn-sm"  rel="tooltip" title="Activer" href="{{ URL::to('/active-of/'.
                        $v_of->of_id)}}">
                                    <i class="material-icons">thumb_up</i>
                                </a>
                                @endif
                                <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-agre-of/'.
                        $v_of->of_id)}}"">
                                <i class="material-icons">edit</i>
                                </a>
                                @if( Session::get('admin_role')==1)
                                <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-agre-of/'.
                        $v_of->of_id)}}" id="delete">
                                    <i class="material-icons">close</i>
                                </a>
                                @endif
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
                    {{ $all_of_info->links() }}
                </div>
            </div>

        </div>
    </div>
</div>
@endsection