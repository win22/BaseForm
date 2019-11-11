@extends('admin_layout')
@section('contenu')


@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
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
                <h4 class="card-title">Entreprise Intervenante  <i class="fa fa-crop redI"></i></h4>
                <p class="card-category">Ajouter une Entreprise Intervenante</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/save-ei')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom <span  class="text-danger">*</span></label>
                                <input  value="{{ old('name') }}" name="name" type="text" class="form-control">
                            </div>
                            @if($errors->has('name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('name')}}</small>
                            @endif
                        </div>

                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse <span  class="text-danger">*</span></label>
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
                                <label class="bmd-label-floating">Adresse e-mail <span  class="text-danger">*</span></label>
                                <input  value="{{ old('ei_email') }}" name="ei_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('ei_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone <span  class="text-danger">*</span></label>
                                <input  value="{{ old('ei_phone') }}" name="ei_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_phone'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('ei_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Secteur d'Activité <span  class="text-danger">*</span></label>
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
                                <label class="bmd-label-floating">Nom du Directeur <span  class="text-danger">*</span></label>
                                <input  value="{{ old('ei_nameDi') }}" name="ei_nameDi" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_nameDi'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_nameDi')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date d'adhésion <span  class="text-danger">*</span></label>
                                <input type="date" class="form-control text-warning" min="1800-08-13" name="ei_date_ad">
                                @if($errors->has('ei_date_ad'))
                                <small class="form-text text-muted text-danger">{{$errors->first('ei_date_ad')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control " name="ei_etat">
                                <option value="">État <span  class="text-danger">*</span> </option>
                                <option class="text-warning" value="en demarche">En démarche</option>
                                <option class="text-success" value="certifie">Certifié Mase </option>
                            </select>
                            @if($errors->has('ei_etat'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_etat')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Duré de la certification</label>
                                <input  value="{{ old('ei_time') }}" name="ei_time" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_time'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_time')}}</small>
                            @endif
                        </div>

                        <div class="col-md-5">
                            <select  class="form-control " name="ei_eu">
                                <option value="">Selectionner une Entreprise Utilisatrice </option>
                               @foreach($eu_all as $v_eu)
                                <option class="text-success" value="{{ $v_eu->name  }}">{{ $v_eu->name }} </option>
                                @endforeach
                            </select>
                            @if($errors->has('ei_eu'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_eu')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de début </label>
                                <input type="date" class="form-control text-success" min="1800-08-13" name="ei_date_debut">
                                @if($errors->has('ei_date_debut'))
                                <small class="form-text text-muted text-danger">{{$errors->first('ei_date_debut')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de fin </label>
                                <input type="date" class="form-control text-danger" min="1800-08-13" name="ei_date_fin">
                                @if($errors->has('ei_date_fin'))
                                <small class="form-text text-muted text-danger">{{$errors->first('ei_date_fin')}}</small>
                                @endif
                            </div>
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
@endif
@endsection