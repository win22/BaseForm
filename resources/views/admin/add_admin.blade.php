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
                <h4 class="card-title">Utilisateurs  <i class="material-icons oraI">supervised_user_circle</i></h4>
                <p class="card-category">Ajouter un Utilisateur</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/save-admin')}}" method="post">
                    @csrf
                    <div class="row">

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail</label>
                                <input  value="{{ old('admin_email') }}" name="admin_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('admin_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_email')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Password</label>
                                <input  value="{{ old('admin_password') }}" name="admin_password" type="password" class="form-control">
                            </div>
                            @if($errors->has('admin_password'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_password')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Structure</label>
                                <input  value="{{ old('admin_structure') }}" name="admin_structure" type="text" class="form-control">
                            </div>
                            @if($errors->has('admin_structure'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_structure')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ old('admin_phone') }}" name="admin_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('admin_short_description'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('admin_short_description')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select class="form-control" name="admin_role">
                                   <option value="">Selectioner un role</option>
                                @if( Session::get('admin_role')==1)
                                <option value="1">Administrateur</option>
                                @endif
                                    <option  value="2">Utilisateur</option>
                            </select>
                            @if($errors->has('admin_role'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_role')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control" name="admin_status">
                                <option value="0">Status Désactivé</option>
                            </select>
                            @if($errors->has('admin_status'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_status')}}</small>
                            @endif
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <label class="bmd-label-floating">Image de l'utilisateur</label><br>
                                <input required accept="image/*" type="file" name="admin_image">
                            </div>
                            @if($errors->has('admin_image'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_image')}}</small>
                            @endif
                        </div>

                    </div>
                    <div class="row">

                    </div>
                    <button type="submit" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </button>&nbsp;
                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Creer    </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endsection