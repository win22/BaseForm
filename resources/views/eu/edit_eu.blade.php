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
                <h4 class="card-title">Entreprise Utilisatrice  <i class="fa fa-industry"></i></h4>
                <p class="card-category">Modifier une entreprise utilisatrice </p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/update-eu',$eu_info->eu_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom</label>
                                <input  value="{{ $eu_info->name }}" name="name" type="text" class="form-control">
                            </div>
                            @if($errors->has('name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('name')}}</small>
                            @endif
                        </div>

                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse</label>
                                <input  value="{{ $eu_info->eu_adresse }}" name="eu_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_adresse')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail</label>
                                <input  value="{{ $eu_info->eu_email }}" name="eu_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('eu_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ $eu_info->eu_phone }}" name="eu_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_phone'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('eu_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Effectif</label>
                                <input  value="{{ $eu_info->eu_efectif }}" name="eu_efectif" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_efectif'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_efectif')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Secteur d'Activité</label>
                                <input  value="{{ $eu_info->eu_secteurA }}" name="eu_secteurA" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_secteurA'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_secteurA')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contact Pour la demande</label>
                                <input  value="{{ $eu_info->eu_contactDe }}" name="eu_contactDe" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_contactDe'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_contactDe')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom du Directeur</label>
                                <input  value="{{ $eu_info->eu_nameDi }}" name="eu_nameDi" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_nameDi'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_nameDi')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date d'adhésion <span  class="text-danger">*</span></label>
                                <input  value="{{ $eu_info->eu_date_ad }}" type="date" class="form-control text-warning" min="1800-08-13" name="eu_date_ad">
                                @if($errors->has('eu_date_ad'))
                                <small class="form-text text-muted text-danger">{{$errors->first('eu_date_ad')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control " name="eu_etat">
                                @if($eu_info->eu_etat == 'normal')
                                <option value="normal">Normal</option>
                                @elseif($eu_info->eu_etat == 'non_certifie')
                                <option class="text-warning" value="non_certifie">En démarche</option>
                                @else
                                <option class="text-success" value="certifie">Certifié Mase </option>
                                @endif

                                <option  value="">Selection un état <span  class="text-warning">*</span> </option>
                                <option value="normal">Normal</option>
                                <option class="text-warning" value="non_certifie">En démarche</option>
                                <option class="text-success" value="certifie">Certifié Mase </option>
                            </select>
                            @if($errors->has('eu_etat'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_etat')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control " name="eu_ei">
                                <option value="{{ $eu_info->eu_ei }}">{{ $eu_info->eu_ei }}</option>
                                <option class="text-warning" value="">Selectionner une Entreprise Intervenante </option>
                                @foreach($ei_all as $v_ei)
                                <option  value="{{ $v_ei->name  }}">{{ $v_ei->name }} </option>
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
                                <input  value="{{ $eu_info->eu_date_debut }}" type="date" class="form-control text-success" min="1800-08-13" name="eu_date_debut">
                                @if($errors->has('eu_date_debut'))
                                <small class="form-text text-muted text-danger">{{$errors->first('eu_date_debut')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de fin </label>
                                <input value="{{ $eu_info->eu_date_fin }}" type="date" class="form-control text-danger" min="1800-08-13" name="eu_date_fin">
                                @if($errors->has('eu_date_fin'))
                                <small class="form-text text-muted text-danger">{{$errors->first('eu_date_fin')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Duré de la certification</label>
                                <input   value="{{ $eu_info->eu_time }}" name="eu_time" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_time'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_time')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <input value="1" name="user_role" type="text" hidden>
                    </div>
                    <a href="/all-eu"  id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler
                    </a>&nbsp;
                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Modifier </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>

</div>
@endif
@endsection