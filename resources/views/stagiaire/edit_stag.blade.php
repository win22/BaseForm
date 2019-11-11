@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2
|| Session::get('admin_role')== 3
&& Session::get('admin_structure')== $stag_info->stag_structure &&  $stag_info->stag_validation == 0 )

<p class="alert">{{ $message = Session::get('message')}}</p>
@if($message)
<div id="alert" class="alert alert-success alert-with-icon col-md-4 right">
    <i class="material-icons" data-notify="icon">add_alert</i>
    </button>
    <span data-notify="message">{{$message }}</span>
</div>
{{ Session::put('message',NULL) }}
@endif

<div class="alert alert-primary">
    <p ref="#">Produit</p>

</div>
<div class="row">
    <p class="hide">{{ $message = Session::get('message')}}</p>
    @if($message)

    {{ Session::put('message',NULL) }}

    @endif
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Stagiaire   <i class="fa fa-asl-interpreting"></i> </h4>
                <p class="card-category">Modifiert un stagiaire</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/update-stag',$stag_info->stag_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom <span  class="text-danger">*</span></label>
                                <input  value="{{ $stag_info->stag_name }}" name="stag_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_name'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('stag_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom <span  class="text-danger">*</span></label>
                                <input  value="{{ $stag_info->stag_prenom }}" name="stag_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_prenom')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail <span  class="text-danger">*</span></label>
                                <input  value="{{ $stag_info->stag_email }}" name="stag_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('stag_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_email')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">


                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone <span  class="text-danger">*</span></label>
                                <input  value="{{ $stag_info->stag_phone }}" name="stag_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse <span  class="text-danger">*</span></label>
                                <input  value="{{ $stag_info->stag_adresse }}" name="stag_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_adresse')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control " name="stag_sexe">
                                @if($stag_info->stag_sexe == 1)
                                <option value="{{ $stag_info->stag_sexe }}">Homme </option>
                                @else
                                <option value="{{ $stag_info->stag_sexe }}">Femme </option>
                                @endif
                                <option class="text-warning" value="">Selectionner un sexe <span  class="text-danger">*</span> </option>
                                <option value="1">Homme</option>
                                <option value="2">Femme</option>
                            </select>
                            @if($errors->has('stag_sexe'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_sexe')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select class="form-control "  name="stag_structure">
                                    <option class="text-warning" value="{{ $stag_info->stag_structure }}">{{ $stag_info->stag_structure }}</option>
                                    <option class="text-warning" value="">Selectionner une structure <span  class="text-danger">*</span> </option>
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    @foreach($OF_all as $v_of)
                                    <option value="{{ $v_of->name }}" >
                                        {{ $v_of->name }}
                                    </option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                            @if($errors->has('stag_structure'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_structure')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="stag_formation">
                                    <option class="text-warning" value="{{ $stag_info->stag_formation }}">{{ $stag_info->stag_formation }}</option>
                                    <option class="text-warning" value="">Selectionner une formationn <span  class="text-danger">*</span> </option>
                                    @foreach($FORMT_all as $v_formt)
                                    <option value="{{ $v_formt->formt_name }}" >
                                        {{ $v_formt->formt_name }}
                                    </option>
                                    @endforeach
                                </select>
                                @if($errors->has('stag_formation'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_formation')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="stag_formateur">
                                    <option class="text-warning" value="{{ $stag_info->stag_formateur }}">{{ $stag_info->stag_formateur }}</option>
                                    <option class="text-warning" value="">Selectionner un formateur <span  class="text-danger">*</span>  </option>
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    @foreach($FORM_all as $v_form)
                                    <option value="{{ $v_form->form_name }}" >
                                        {{ $v_form->form_name }}
                                    </option>
                                    @endforeach
                                    @else
                                    @foreach($FORM as $v_form)
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
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Début de la formation <span  class="text-danger">*</span></label>
                                <input value="{{ $stag_info->stag_date_debu }}" type="date" class="form-control text-success" min="1800-08-13" name="stag_date_debu">
                                @if($errors->has('stag_date_debu'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_date_debu')}}</small>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                                <input value="{{ $stag_info->stag_date_fin }}" type="date" class="form-control text-danger" min="1800-08-13" name="stag_date_fin">
                                @if($errors->has('stag_date_fin'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_date_fin')}}</small>
                                @endif
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <label class="bmd-label-floating">Image</label><br>
                                <input  accept="image/*" type="file" name="stag_image">
                            </div>
                            @if($errors->has('stag_image'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_image')}}</small>
                            @endif
                        </div>
                    </div>

                    <a href="/all-stag" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                    <button type="submit"  class="btn btn-success pull-right">
                        <i class="material-icons">edit </i>
                        Modifier </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endif
@endsection