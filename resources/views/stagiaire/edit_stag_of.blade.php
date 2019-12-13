@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2
|| Session::get('admin_role')== 3
&& Session::get('admin_structure')== $stag_info->stag_structure
&& $stag_info->stag_etat == 'non'
)


<div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form  action="{{ url('/update-stag-fo',$stag_info->stag_id) }}" method="post" >
        @csrf
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Modifier</h5>
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
                            <option class="text-success" value="{{ $stag_info->stag_certi }}">{{$stag_info->stag_certi }}</option>
                            <option   class="text-warning" value="">Ou</option>
                            <option  value="2">Deuxieme formation</option>
                            <option  value="3">Troisieme formation</option>
                            <option  value="4">Quatrieme formation</option>
                            <option  value="5">Cinquieme formation</option>
                        </select>
                    </div>
                    <div  class="form-group">
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