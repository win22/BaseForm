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
                <form action="{{ url('/save-form')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom </label>
                                <input  value="{{ old('form_name') }}" name="form_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom </label>
                                <input  value="{{ old('form_prenom') }}" name="form_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_prenom')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse </label>
                                <input  value="{{ old('form_adresse') }}" name="form_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_adresse')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ old('form_phone') }}" name="form_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">adresse e-mail</label>
                                <input  value="{{ old('form_email') }}" name="form_email" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_sexe">
                                    <option value="">Sexe </option>
                                    <option value="1">Homme</option>
                                    <option value="2">Femme </option>
                                </select>
                                @if($errors->has('form_sexe'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_sexe')}}</small>
                                @endif
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_etat">
                                    <option value="">Etat du formateur </option>
                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option value="1">Certifié Mase</option>
                                    @endif
                                    <option value="2">Non certifié </option>
                                </select>
                                @if($errors->has('form_etat'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_etat')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_of">
                                    <option value="">Organisme de formation</option>
                                    <option value="1">Activé</option>
                                    <option value="2">Désactivé</option>
                                </select>
                                @if($errors->has('form_of'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_of')}}</small>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_status">
                                    <option value="">Status du formateur </option>
                                    <option value="1">Activé</option>
                                    <option value="2">Désactivé</option>
                                </select>
                                @if($errors->has('form_status'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_status')}}</small>
                                @endif
                            </div>
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