@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2
|| Session::get('user_role')== 3
&& Session::get('admin_structure')== $stag_info->stag_structure
&& $stag_info->stag_etat == 'non'
)


<div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form  action="{{ url('/update-stag-fo',$stag_info->stag_id) }}" method="post" >
        @csrf
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: red">
                    <h5 class="modal-title text-white" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Modifier</h5>
                </div>
                <div class="modal-body">
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_token">
                            <option class="text-success" value="{{ $stag_info->stag_token }}">{{$stag_info->stag_token }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_status">
                            <option class="text-success" value="{{ $stag_info->stag_status }}">{{$stag_info->stag_status }}</option>
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
                            <option value="{{ $stag_info->stag_sexe }}">{{  $stag_info->stag_sexe }} </option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_structure">
                            <option class="text-success" value="{{ $stag_info->stag_structure }}">{{ $stag_info->stag_structure }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_situa">
                            <option class="text-success" value="{{ $stag_info->stag_situa }}">{{ $stag_info->stag_situa }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_lieu_naiss">
                            <option class="text-success" value="{{ $stag_info->stag_lieu_naiss }}">{{ $stag_info->stag_lieu_naiss }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_date_naiss">
                            <option class="text-success" value="{{ $stag_info->stag_date_naiss }}">{{ $stag_info->stag_date_naiss }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_type_piece">
                            <option class="text-success" value="{{ $stag_info->stag_type_piece }}">{{ $stag_info->stag_type_piece }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="stag_num_piece">
                            <option class="text-success" value="{{ $stag_info->stag_num_piece }}">{{ $stag_info->stag_num_piece }}</option>
                        </select>
                    </div>

                        <div class="form-group  bmd-form-group is-filled">
                            <label class="bmd-label-floating">Formateur  <span  class="text-danger">*</span></label>
                            <select  class="form-control " name="stag_formateur">
                                <option class="text-warning" value="{{ $stag_info->stag_formateur }}">{{ $stag_info->stag_formateur }}</option>
                                <option class="text-danger" value="">Selectionner un autre formateur <span  class="text-danger">*</span>  </option>
                                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                @foreach($FORM_all as $v_form)
                                <option value="{{ $v_form->form_name }}" >
                                    {{ $v_form->form_name }}
                                </option>
                                @endforeach
                                @else
                                @foreach($FORM_stag as $v_form)
                                <option value="{{ $v_form->form_name }}" >
                                    {{ $v_form->form_name }}
                                </option>
                                @endforeach
                                @endif
                            </select>
                            @if($errors->has('stag_formateur'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_formateur')}}</small>
                            @endif
                        </div>


                    <div class="form-group  bmd-form-group is-filled">
                        <label class="bmd-label-floating">Nombre de certification  <span  class="text-danger">*</span></label>
                        <select  class="form-control" name="stag_certi">
                            <option class="text-success" value="{{ $stag_info->stag_certi }}">{{$stag_info->stag_certi }}</option>
                            <option   class="text-warning" value="">Ou</option>
                            <option  value="2">Deuxieme formation</option>
                            <option  value="3">Troisieme formation</option>
                            <option  value="4">Quatrieme formation</option>
                            <option  value="5">Cinquieme formation</option>
                        </select>
                    </div>
                    <div  class="form-group">
                        <div class="form-group  bmd-form-group is-filled">
                            <label class="bmd-label-floating">Formation  <span  class="text-danger">*</span></label>
                        <select  class="form-control" name="stag_formation">
                            <option class="text-success" value="{{ $stag_info->stag_formation }}">{{$stag_info->stag_formation }}</option>
                            <option class="text-warning" value="">Selectionner une autre  formation <span  class="text-danger">*</span></option>
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
                    @if(Session::get('admin_role') ==1 || Session::get('admin_role') == 2)
                        <div class="form-group  bmd-form-group is-filled">
                            <label class="bmd-label-floating">État  <span  class="text-danger">*</span></label>
                        <select  class="form-control dynamic2 " name="stag_etat">
                            @if($stag_info->stag_etat == 'agrée')
                            <option class="text-success" value="{{ $stag_info->stag_etat }}">Certifié Mase </option>
                            @else
                            <option style="color: red!important;" class="text-danger" value="{{ $stag_info->stag_etat }}">Non Certifié  </option>

                            <option value="">Selectionner une autre catégorie <span  class="text-danger">*</span> </option>
                            <option class="text-success" value="agrée">Certfié </option>
                            <option  class="text-danger" value="non">Non certifié </option>
                           @endif

                        </select>
                    </div>
                    @endif
                    <div  class="form-group">
                        <label class="label">Début de la formation <span  class="text-danger">*</span></label>
                        <input value="{{ $stag_info->stag_date_debut }}" type="date" class="form-control text-success" min="1800-08-13" name="stag_date_debut">
                        @if($errors->has('stag_date_debut'))
                        <small class="form-text text-muted text-danger">{{$errors->first('stag_date_debut')}}</small>
                        @endif
                    </div>
                    <div  class="form-group">
                        <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                        <input value="{{ $stag_info->stag_date_fin }}" type="date" class="form-control text-danger" min="1800-08-13" name="stag_date_fin">
                        @if($errors->has('stag_date_fin'))
                        <small class="form-text text-muted text-danger">{{$errors->first('stag_date_fin')}}</small>
                        @endif
                    </div>
                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                        <div class="form-group  bmd-form-group is-filled">
                            <label class="bmd-label-floating">Durée de la certification  <span  class="text-danger">*</span></label>
                        <label class="bmd-label-floating">Durée de la certification <span  class="text-danger">*</span> </label>
                        <input  value="{{ $stag_info->stag_time }}" name="stag_time" type="text" class="form-control">
                    </div>
                    @if($errors->has('stag_time'))
                    <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('stag_time')}}</small>
                    @endif

                    @endif
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-sm btn-info">Enregistrer </button>
                    <a href="{{ URL::to('/details-stag/'.
                        $stag_info->stag_token)}}" id="md." class="btn btn-danger btn-sm pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                </div>
            </div>
        </div>
    </form>
</div>

@endif
@endsection