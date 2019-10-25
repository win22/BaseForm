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
                <h4 class="card-title">Formateur</h4>
                <p class="card-category">Ajouter un formateur</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/save-form')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom du formateur</label>
                                <input  value="{{ old('form_name') }}" name="form_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_name')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom du formateur</label>
                                <input  value="{{ old('form_prenom') }}" name="form_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_prenom')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse du formateur</label>
                                <input  value="{{ old('form_adresse') }}" name="form_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_adresse')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Organisme de formation</label>
                                <input  value="{{ old('form_of') }}" name="form_of" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_of'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_of')}}</small>
                            @endif
                        </div>
                    </div>
                    <button type="submit" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </button>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Creer </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endsection