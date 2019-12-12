@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2
|| Session::get('admin_role')== 3
&& Session::get('admin_structure')== $form_info->form_of
&& $form_info->form_etat == 'non'
)

<div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form  action="{{ url('/update-form-fo',$form_info->form_id) }}" method="post" >
        @csrf
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" style="font-family: 'Manjari Bold'" id="exampleModalLabel"> Modifier</h5>
                </div>
                <div class="modal-body">
                    <div hidden class="form-group">
                        <select  class="form-control" name="form_token">
                            <option class="text-success" value="{{ $form_info->form_token }}">{{ $form_info->form_token }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="form_etat">
                            <option class="text-success" value="{{ $form_info->form_etat }}">{{ $form_info->form_etat }}</option>
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
                            @if($form_info->form_sexe == 1)
                            <option value="{{ $form_info->form_sexe }}">Homme </option>
                            @else
                            <option value="{{ $form_info->form_sexe }}">Femme </option>
                            @endif
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="form_of">
                            <option class="text-success" value="{{ $form_info->form_of }}">{{ $form_info->form_of }}</option>
                        </select>
                    </div>
                    <div  class="form-group">
                        <select  class="form-control" name="form_certi">
                            <option  value="{{ $form_info->form_certi  }}">{{ $form_info->form_certi }}</option>
                            <option class="text-warning"  value="">Or</option>
                            <option  value="2">Deuxieme formation</option>
                            <option  value="3">Troisieme formation</option>
                            <option  value="4">Quatrieme formation</option>
                            <option  value="5">Cinquieme formation</option>
                        </select>
                    </div>
                    <div  class="form-group">
                        <select  class="form-control " name="form_etat">
                            @if($form_info->form_etat == 'agrée')
                            <option class="text-success" value="{{ $form_info->form_etat }}">Agréé par Mase </option>
                            @else
                            <option class="text-danger" value="{{ $form_info->form_etat }}">Non agréé  </option>
                            @endif

                            @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                            <option value="">Selectionner un autre <span  class="text-danger"></span> </option>
                            <option class="text-success" value="agrée">agrée par Mase</option>
                            <option class="text-danger" value="non">Non agréé </option>
                            @endif


                        </select>
                    </div>
                    <div  class="form-group">
                        <select  class="form-control" name="form_formation">
                            <option class="" value="{{$form_info->form_formation }}">{{ $form_info->form_formation }} <span  class="text-danger">*</span></option>
                            <option class="text-warning" value="">Selectionner une autre formation <span  class="text-danger">*</span></option>
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
                    @if( Session::get('admin_role')==1 || Session::get('admin_role')==2)
                    <div  class="form-group">
                        <label class="label">Début de la formation <span  class="text-danger">*</span></label>
                        <input value="{{ $form_info->form_date_debut }}" type="date" class="form-control text-success" min="1800-08-13" name="form_date_debut">
                        @if($errors->has('form_date_debut'))
                        <small class="form-text text-muted text-danger">{{$errors->first('form_date_debut')}}</small>
                        @endif
                    </div>
                    <div  class="form-group">
                        <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                        <input value="{{ $form_info->form_date_fin }}" type="date" class="form-control text-danger" min="1800-08-13" name="form_date_fin">
                        @if($errors->has('form_date_fin'))
                        <small class="form-text text-muted text-danger">{{$errors->first('form_date_fin')}}</small>
                        @endif
                    </div>
                    @endif

                </div>
                <div class="modal-footer">

                    <button type="submit" id="md." class="btn btn-info btn-sm pull-right">
                        <i class="material-icons">edit</i>
                        Enregistrer </button>
                    <a href="{{ URL::to('/details-form/'.
                        $form_info->form_token)}}"  id="md." class="btn btn-danger btn-sm pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                </div>
            </div>
        </div>
    </form>
</div>


@endif
@endsection