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
                <p class="card-category">Modifier une entreprise intervenante </p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/update-ei',$ei_info->ei_id)}}" method="post">
                    @csrf

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom</label>
                                <input  value="{{ $ei_info->ei_name }}" name="ei_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_name')}}</small>
                            @endif
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse</label>
                                <input  value="{{ $ei_info->ei_adresse }}" name="ei_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_adresse')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Email</label>
                                <input  value="{{ $ei_info->ei_email }}" name="ei_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('ei_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Password</label>
                                <input  value="{{ $ei_info->psw }}" name="psw" type="password" class="form-control">
                            </div>
                            @if($errors->has('psw'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('psw')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ $ei_info->ei_phone }}" name="ei_phone" type="text" class="form-control">
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
                                <input  value="{{ $ei_info->ei_nameDi }}" name="ei_nameDi" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_nameDi'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_nameDi')}}</small>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Secteur d'Activité</label>
                                <input  value="{{ $ei_info->ei_secteurA }}" name="ei_secteurA" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_secteurA'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_secteurA')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Entreprises Intervenante</label>
                                <input  value="{{ $ei_info->ei_eu }}" name="ei_eu" type="text" class="form-control">
                            </div>
                            @if($errors->has('ei_eu'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('ei_eu')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control" name="ei_status">
                                @if($ei_info->ei_status == 1)
                                <option value="1">Status Activé</option>
                                @else
                                <option value="2">Status Désactivé</option>
                                @endif
                            </select>
                            @if($errors->has('ei_status'))
                            <small class="form-text text-muted text-danger">{{$errors->first('ei_status')}}</small>
                            @endif
                        </div>
                    </div>
                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Modifier </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endsection