@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2
|| Session::get('user_role')== 3
&& Session::get('admin_structure')== $form_info->form_of
&& $form_info->form_etat == 'non' &&  $form_info->form_certi == 1
)

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
                <h4 class="card-title">Formateurs</h4>
                <p class="card-category">Modifier un formateur</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/update-form',$form_info->form_id) }}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_name }}" name="form_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_prenom }}" name="form_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_prenom')}}</small>
                            @endif
                        </div>

                        <div class="col-md-2">
                            <select  class="form-control " name="form_sexe">
                                @if($form_info->form_sexe == 1)
                                <option value="{{ $form_info->form_sexe }}">Homme </option>
                                @else
                                <option value="{{ $form_info->form_sexe }}">Homme </option>
                                @endif
                                <option value="">Sexe <span  class="text-danger">*</span> </option>
                                <option value="1">Homme</option>
                                <option value="2">Femme </option>
                            </select>
                            @if($errors->has('form_sexe'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_sexe')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <select  class="form-control " name="form_type_piece">
                                <option value="{{ $form_info->form_type_piece }}"> {{ $form_info->form_type_piece }}</option>
                                <option class="text-warning" value="">Type Piece <span  class="text-danger">*</span> </option>
                                <option value="Carte National d'identité">Carte national d'identité</option>
                                <option value="Passeport">Passeport</option>
                            </select>
                            @if($errors->has('form_type_piece'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_type_piece')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Numéro de la piece <span  class="text-danger">*</span></label>
                                <input  value="{{  $form_info->form_num_piece }}" name="form_num_piece" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_num_piece'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_num_piece')}}</small>
                            @endif
                        </div>
                        <div class="col-md-2">
                            <select  class="form-control " name="form_situa">
                                <option value="{{ $form_info->form_situa }}"> {{ $form_info->form_situa }}</option>
                                <option  class="text-warning" value="">Situation matrimoniale <span  class="text-danger">*</span> </option>
                                <option value="Marié(e)">Marié(e)</option>
                                <option value="Divorcé(e)">Divorcé(e)</option>
                                <option value="Fiancé(e)">Fiancé(e)</option>
                                <option value="Célibataire">Célibataire</option>
                            </select>
                            @if($errors->has('form_situa'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_situa')}}</small>
                            @endif
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_phone }}" name="form_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">adresse e-mail <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_email }}" name="form_email" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_adresse }}" name="form_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_adresse')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control" name="form_of">
                                    <option value="{{ $form_info->form_of }}">{{ $form_info->form_of }}</option>
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option class="text-warning" value="">Choisir une autre organisme de formation</option>
                                    @foreach($OF_all as $v_of)
                                    <option value="{{ $v_of->name }}" >
                                        {{ $v_of->name }}
                                    </option>
                                    @endforeach
                                    @endif
                                </select>
                                @if($errors->has('form_of'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_of')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_etat">
                                    @if($form_info->form_etat == 'agrée')
                                    <option class="text-success" value="{{ $form_info->form_etat }}">Agréé par Mase </option>
                                    @else
                                    <option class="text-danger" value="{{ $form_info->form_etat }}">Non agréé  </option>
                                    @endif

                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option value="">Etat du formateur <span  class="text-danger">*</span> </option>
                                    <option class="text-success" value="agrée">agrée par Mase</option>
                                    <option class="text-danger" value="non">Non agréé </option>
                                    @endif


                                </select>
                                @if($errors->has('form_etat'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_etat')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_formation">
                                    <option class="" value="{{$form_info->form_formation }}">{{ $form_info->form_formation }}</option>
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
                                @if($errors->has('form_formation'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_formation')}}</small>
                                @endif
                            </div>
                        </div>
                    </div>
                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                    <div class="row ">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Début de la formation <span  class="text-danger">*</span></label>
                                <input value="{{ $form_info->form_date_debut }}" type="date" class="form-control text-success" min="1800-08-13" name="form_date_debut">
                                @if($errors->has('form_date_debut'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_date_debut')}}</small>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_date_debut }}" type="date" class="form-control text-danger" min="1800-08-13" name="form_date_fin">
                                @if($errors->has('form_date_fin'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_date_fin')}}</small>
                                @endif
                            </div>
                        </div>
                    </div>
                    @endif
                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <label class="bmd-label-floating">Selectionner l'image du formateur</label><br>
                                <input    accept="image/*" type="file" name="form_image">
                            </div>
                            @if($errors->has('form_image'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_image')}}</small>
                            @endif
                        </div>
                        <input hidden  value="{{ $form_info->form_token }}" name="form_token" type="text" class="form-control">
                        <input hidden value="{{ $form_info->form_status }}" name="form_status" type="text" class="form-control">
                    </div>
                    <a href="/all-form" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">edit</i>
                        Modifer </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
@endif
@endsection