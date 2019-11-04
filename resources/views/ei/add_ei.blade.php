@extends('admin_layout')
@section('contenu')

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
                <h4 class="card-title">Entreprise Intervenante   <i class="fa fa-building redI"></i></h4>
                <p class="card-category">Ajouter une Entreprise Intervenant</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/save-ei')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom</label>
                                <input  value="{{ old('name') }}" name="name" type="text" class="form-control">
                            </div>
                            @if($errors->has('name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('name')}}</small>
                            @endif
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse</label>
                                <input  value="{{ old('ei_adresse') }}" name="ei_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_adresse')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail</label>
                                <input  value="{{ old('ei_email') }}" name="ei_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('ei_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_email')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ old('ei_phone') }}" name="ei_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_phone'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('ei_phone')}}</small>
                            @endif
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom du Directeur</label>
                                <input  value="{{ old('ei_nameDi') }}" name="ei_nameDi" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_nameDi'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_nameDi')}}</small>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Secteur d'Activité</label>
                                <input  value="{{ old('ei_secteurA') }}" name="ei_secteurA" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_secteurA'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_secteurA')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Entreprises Utilisatrices</label>
                                <input  value="{{ old('ei_ei') }}" name="ei_eu" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_eu'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('ei_eu')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control" name="ei_status">
                                <option value="0">Selection un status</option>
                                <option value="1">Certifié Mase</option>
                                <option value="2">Démarche </option>
                            </select>
                            @if($errors->has('ei_status'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_status')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <input value="2" name="user_role" type="text" hidden>
                    </div>
                    <a href="/all-ei" id="md." class="btn btn-danger pull-right">
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
@endsection