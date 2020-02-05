@extends('admin_layout')
@section('contenu')


@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role')== 3)
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
                <h4 class="card-title">Formateur   <i class="fa fa-users"></i> </h4>
                <p class="card-category">Ajouter un formateur</p>
            </div>
            <div class="card-body">
                <form  enctype="multipart/form-data" action="{{ url('/save-form')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom <span  class="text-danger">*</span></label>
                                <input required value="{{ old('form_name') }}" name="form_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom <span  class="text-danger">*</span></label>
                                <input  required value="{{ old('form_prenom') }}" name="form_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_prenom')}}</small>
                            @endif
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de naissance <span  class="text-danger">*</span></label>
                                <input required type="date" class="form-control text-info"  name="form_date_naiss">
                                @if($errors->has('form_date_naiss'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_date_naiss')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Lieu de Naissance <span  class="text-danger">*</span></label>
                                <input required value="{{ old('form_lieu_naiss') }}" name="form_lieu_naiss" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_lieu_naiss'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_lieu_naiss')}}</small>
                            @endif
                        </div>
                        <div class="col-md-2">
                            <select  class="form-control " name="form_sexe">
                                <option  class="text-warning" value="">Sexe <span  class="text-danger">*</span> </option>
                                <option value="Homme">Homme</option>
                                <option value="Femme">Femme </option>
                            </select>
                            @if($errors->has('form_sexe'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_sexe')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <select  class="form-control " name="form_type_piece">
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
                                <input required  value="{{ old('form_num_piece') }}" name="form_num_piece" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_num_piece'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_num_piece')}}</small>
                            @endif
                        </div>
                        <div class="col-md-2">
                            <select  class="form-control " name="form_situa">
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
                                <input  required value="{{ old('form_phone') }}" name="form_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">adresse e-mail <span  class="text-danger">*</span></label>
                                <input required  value="{{ old('form_email') }}" name="form_email" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse <span  class="text-danger">*</span></label>
                                <input required value="{{ old('form_adresse') }}" name="form_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_adresse')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_of">
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option value="">Organisme de formation </option>
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
                                @if($errors->has('form_of'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_of')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control dynamic2" name="form_etat">
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option value="">Etat du formateur <span  class="text-danger">*</span> </option>
                                    <option class="text-success" value="agrée">Agrée</option>
                                    @endif
                                    <option  class="text-danger" value="non">Non agrée </option>
                                </select>
                                @if($errors->has('form_etat'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_etat')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <select  class="form-control " name="form_formation">
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
                                @if($errors->has('form_formation'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_formation')}}</small>
                                @endif
                            </div>
                        </div>
                    </div>
                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                    <div class="row forma">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Début de la formation <span  class="text-danger">*</span></label>
                                <input required type="date" class="form-control text-success" name="form_date_debut">
                                @if($errors->has('form_date_debut'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_date_debut')}}</small>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Fin de la formation <span  class="text-danger">*</span></label>
                                <input required type="date" class="form-control text-danger"  name="form_date_fin">
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
                                <input required  accept="image/*" type="file" name="form_image">
                            </div>
                            @if($errors->has('form_image'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_image')}}</small>
                            @endif

                        </div>
                    </div>


                    <a href="/all-form" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
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