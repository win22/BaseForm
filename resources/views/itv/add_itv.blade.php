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
                <h4 class="card-title">Intervenant  <i class="fa fa-user"></i></h4>
                <p class="card-category">Ajouter un Intervenant</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/save-itv')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="bmd-label-floating">Code</label>
                                <input  value="{{ old('itv_code') }}" name="itv_code" type="text" class="form-control">
                            </div>
                            @if($errors->has('itv_code'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_code')}}</small>
                            @endif
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="bmd-label-floating">N° de sécurité</label>
                                <input  value="{{ old('itv_numsec') }}" name="itv_numsec" type="text" class="form-control">
                            </div>
                            @if($errors->has('itv_numsec'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_numsec')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom</label>
                                <input  value="{{ old('itv_name') }}" name="itv_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('itv_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prénom</label>
                                <input  value="{{ old('itv_prenom') }}" name="itv_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('itv_prenom'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('itv_prenom')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                 <select  class="form-control" name="itv_sex">
                                    <option value="">Séléctioner un sexe</option>
                                    <option value="1">Homme</option>
                                    <option value="2">Femme</option>
                                </select>
                            </div>
                            @if($errors->has('itv_sex'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_sex')}}</small>
                            @endif
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de naissance</label>
                                <input type="date" max="2012-06-25" class="form-control" min="1800-08-13" name="itv_date_naiss">
                            </div>
                            @if($errors->has('itv_date_naiss'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_date_naiss')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Lieu de naissance</label>
                                <input  value="{{ old('itv_Lieu_naiss') }}" name="itv_Lieu_naiss" type="text" class="form-control">
                            </div>
                            @if($errors->has('itv_Lieu_naiss'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_Lieu_naiss')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control " name="itv_ei">
                                <option value="">Selectionner une Entreprise Intervenante </option>
                                @foreach($ei_all as $v_ei)
                                <option class="text-success" value="{{ $v_ei->name  }}">{{ $v_ei->name }} </option>
                                @endforeach
                            </select>
                            @if($errors->has('itv_ei'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_ei')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <label class="label">Image de l'intervenant </label><br>
                                <input required accept="image/*" type="file" name="itv_image">
                            </div>
                            @if($errors->has('itv_image'))
                            <small class="form-text text-muted text-danger">{{$errors->first('itv_image')}}</small>
                            @endif
                        </div>

                    </div>
                    <a href="/all-itv" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>
                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Creer </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endif
@endsection