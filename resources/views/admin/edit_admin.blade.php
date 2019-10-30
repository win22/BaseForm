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

<p class="alert">{{ $error = Session::get('error')}}</p>
@if($error)
<div id="alert" class="alert alert-warning alert-with-icon col-md-4 right">
    <i class="material-icons" data-notify="icon">add_alert</i>
    </button>
    <span data-notify="message">{{$error }}</span>
</div>
{{ Session::put('message',NULL) }}
@endif


<div class="alert alert-primary">
    <p ref="#">Produit</p>

</div>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Utilisateurs  <i class="material-icons oraI">supervised_user_circle</i></h4>
                <p class="card-category">Modifier un Utilisateur</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/update-admin',$admin_info->admin_id)}}" method="post">
                    @csrf
                    <div class="row">

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail</label>
                                <input  value="{{ $admin_info->admin_email }}" name="admin_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('admin_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_email')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Password</label>
                                <input  value="{{ $admin_info->admin_password }}" hidden name="admin_password" type="password" class="form-control">
                            </div>
                            @if($errors->has('admin_password'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_password')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Structure</label>
                                <input  value="{{ $admin_info->admin_structure }}" name="admin_structure" type="text" class="form-control">
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
                                <input  value="{{ $admin_info->admin_phone }}" name="admin_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('admin_short_description'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('admin_short_description')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control" name="admin_role">
                                @if($admin_info->admin_role == 1)
                                <option value="1">Administrateur</option>
                                @else
                                <option value="2">Utilisateur</option>
                                @endif
                                @if( Session::get('admin_role')==1)
                                <option value="">Selectionner un role</option>
                                <option value="1">Administrateur</option>
                                <option value="2">Utilisateur</option>
                                @endif
                            </select>
                            @if($errors->has('admin_role'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_role')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control" name="admin_status">
                                @if($admin_info->admin_status == 1)
                                <option value="1">Status Activé</option>
                                @else
                                <option value="0">Status Désactivé</option>
                                @endif
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
                                <input  accept="image/*" type="file" name="admin_image">
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
                            Modifier </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endsection