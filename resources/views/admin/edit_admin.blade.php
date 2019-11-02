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
                                <label class="bmd-label-floating">Nom</label>
                                <input  value="{{ $admin_info->admin_prenom }}" name="admin_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('admin_prenom'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('admin_prenom')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail</label>
                                <input  value="{{ $admin_info->admin_email }}" name="admin_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('admin_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_email')}}</small>
                            @endif
                        </div>

                        @if(Session::get('admin_role') == 1 )
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Mot de passe</label>
                                <input  value="{{ ($admin_info->admin_password) }}" name="admin_password" type="password" class="form-control">
                            </div>
                            @if($errors->has('admin_password'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_password')}}</small>
                            @endif
                        </div>
                        @endif
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select class="form-control dynamic" id="eu_name" name="admin_structure"
                                        data-dependent="user_role">
                                    <option value="{{ $admin_info->admin_structure }}"> {{ $admin_info->admin_structure }}</option>
                                    <option value="">Selectionner une structure</option>
                                    @foreach($EU as $v_eu)
                                    <option value="{{ $v_eu->eu_name }}" >
                                        {{ $v_eu->eu_name }}
                                    </option>
                                    @endforeach
                                </select>
                            </div>
                            @if($errors->has('admin_structure'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_structure')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control dynamic" id="user_role" name="user_role">
                                    @if($admin_info->user_role == 1)
                                    <option value="{{ $admin_info->user_role }}">Entreprise utilisatrice</option>
                                    @elseif($admin_info->user_role == 2)
                                    <option value="{{ $admin_info->user_role }}">Entreprise intervenante</option>
                                    @elseif($admin_info->user_role == 2)
                                    <option value="{{ $admin_info->user_role }}">Organisme de formation</option>
                                    @endif
                                    <option value="">Categorie Structure</option>
                                </select>
                                @if($errors->has('user_role'))
                                <small class="form-text text-muted text-danger">{{$errors->first('user_role')}}</small>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <select class="form-control" name="admin_role">
                                    @if( $admin_info->admin_role == 1)
                                    <option value="1">Administrateur</option>
                                    @else
                                    <option  value="2">Utilisateur</option>
                                    @endif

                                    <option value="">Selectioner un nouveau role</option>
                                    @if( Session::get('admin_role')==1)
                                    <option value="1">Administrateur</option>
                                    @endif
                                    <option  value="2">Utilisateur</option>
                                </select>
                                @if($errors->has('admin_role'))
                                <small class="form-text text-muted text-danger">{{$errors->first('admin_role')}}</small>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ $admin_info->admin_phone }}" name="admin_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('admin_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="admin_status">
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
                    <a href="/all-admin" type="submit" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
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