@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') == 3)

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
                <h4 class="card-title">Apprenant <i class="fa fa-asl-interpreting"></i> </h4>
                <p class="card-category">Ajouter un apprenant</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/save-stag')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom <span  class="text-danger">*</span> </label>
                                <input required value="{{ old('stag_name') }}" name="stag_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_name'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('stag_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom <span  class="text-danger">*</span> </label>
                                <input required value="{{ old('stag_prenom') }}" name="stag_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_prenom')}}</small>
                            @endif
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de naissance <span  class="text-danger">*</span></label>
                                <input required type="date" class="form-control text-info"  name="stag_date_naiss">
                                @if($errors->has('stag_date_naiss'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_date_naiss')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Lieu de Naissance <span  class="text-danger">*</span></label>
                                <input required  value="{{ old('stag_lieu_naiss') }}" name="stag_lieu_naiss" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_lieu_naiss'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_lieu_naiss')}}</small>
                            @endif
                        </div>
                        <div class="col-md-2">
                            <select required class="form-control " name="stag_sexe">
                                <option  class="text-warning" value="">Sexe <span  class="text-danger">*</span> </option>
                                <option value="Homme">Homme</option>
                                <option value="Femme">Femme </option>
                            </select>
                            @if($errors->has('stag_sexe'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_sexe')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <select required class="form-control " name="stag_type_piece">
                                <option class="text-warning" value="">Type Piece <span  class="text-danger">*</span> </option>
                                <option value="Carte National d'identité">Carte national d'identité</option>
                                <option value="Passeport">Passeport</option>
                            </select>
                            @if($errors->has('stag_type_piece'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_type_piece')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Numéro de la piece <span  class="text-danger">*</span></label>
                                <input required value="{{ old('stag_num_piece') }}" name="stag_num_piece" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_num_piece'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_num_piece')}}</small>
                            @endif
                        </div>
                        <div class="col-md-2">
                            <select required class="form-control " name="stag_situa">
                                <option  class="text-warning" value="">Situation matrimoniale <span  class="text-danger">*</span> </option>
                                <option value="Marié(e)">Marié(e)</option>
                                <option value="Divorcé(e)">Divorcé(e)</option>
                                <option value="Fiancé(e)">Fiancé(e)</option>
                                <option value="Célibataire">Célibataire</option>
                            </select>
                            @if($errors->has('stag_situa'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_situa')}}</small>
                            @endif
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone <span  class="text-danger">*</span></label>
                                <input required value="{{ old('stag_phone') }}" name="stag_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail <span  class="text-danger">*</span></label>
                                <input required value="{{ old('stag_email') }}" name="stag_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('stag_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse <span  class="text-danger">*</span></label>
                                <input required value="{{ old('stag_adresse') }}" name="stag_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_adresse')}}</small>
                            @endif
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select required class="form-control dynamic" id="name" name="stag_structure"
                                        data-dependent="of_id">
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option class="text-warning" value="">Selectionner une structure <span  class="text-danger">*</span></option>
                                    @foreach($OF_all as $v_of)
                                    <option value="{{ $v_of->name }}" >
                                        {{ $v_of->name }}
                                    </option>
                                    @endforeach
                                    @else
                                    @foreach($OF as $v_of)
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
                                <select required  class="form-control " name="stag_formation">
                                    <option class="text-warning" value="">Selectionner une formation <span  class="text-danger">*</span></option>
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    @foreach($FORMT_all as $v_formt)
                                    <option value="{{ $v_formt->formt_name }}" >
                                        {{ $v_formt->formt_name }}
                                    </option>
                                    @endforeach
                                    @else
                                    @foreach($FORMT_spc as $v_format)
                                    <option value="{{ $v_format->of_formation }}" >
                                        {{ $v_format->of_formation }}
                                    </option>
                                    @endforeach
                                    @endif
                                </select>
                                @if($errors->has('stag_formation'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_formation')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select required class="form-control " name="stag_formateur">
                                    <option class="text-warning" value="">Selectionner un formateur <span  class="text-danger">*</span></option>
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
                                    <input type="date" class="form-control text-success" min="1800-08-13" name="stag_date_debut">
                                @if($errors->has('stag_date_debut'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_date_debut')}}</small>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                                <input type="date" class="form-control text-danger" min="1800-08-13" name="stag_date_fin">
                                @if($errors->has('stag_date_fin'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_date_fin')}}</small>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <select  class="form-control dynamic2" name="stag_etat">
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option value="">Etat du Stagiaire <span  class="text-danger">*</span> </option>
                                    <option class="text-success" value="agrée">Certfié </option>
                                    @endif
                                    <option  class="text-danger" value="non">Non certifié </option>
                                </select>
                                @if($errors->has('stag_etat'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_etat')}}</small>
                                @endif
                            </div>
                        </div>

                    </div>
                    <div class="row forma">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Durée de la certification <span  class="text-danger">*</span> </label>
                                <input  value="{{ old('stag_time') }}" name="stag_time" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_time'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('stag_time')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <label class="bmd-label-floating">Image</label><br>
                                <input required  accept="image/*" type="file" name="stag_image">
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
                        <i class="material-icons">check</i>
                        Ajouter </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endif
@endsection