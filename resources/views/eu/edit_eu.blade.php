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
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom</label>
                                <input  value="{{ $eu_info->eu_name }}" name="eu_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_name')}}</small>
                            @endif
                        </div>

                        <div class="col-md-6">
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
                                <label class="bmd-label-floating">Effectif</label>
                                <input  value="{{ $eu_info->eu_efectif }}" name="eu_efectif" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_efectif'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_efectif')}}</small>
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


                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Secteur d'Activité</label>
                                <input  value="{{$eu_info->eu_secteurA }}" name="eu_secteurA" type="text" class="form-control">
                            </div>
                            @if($errors->has('eu_secteurA'))
                            <small class="form-text text-muted text-danger">{{$errors->first('eu_secteurA')}}</small>
                            @endif
                        </div>

                    </div>
                    <div class="row">
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