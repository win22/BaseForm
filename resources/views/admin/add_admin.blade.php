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
                <h4 class="card-title">Utilisateurs <i class="material-icons oraI">supervised_user_circle</i></h4>
                <p class="card-category">Ajouter un Utilisateur</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/save-admin')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom <span class="text-danger">*</span></label>
                                <input required value="{{ old('admin_prenom') }}" name="admin_prenom" type="text"
                                       class="form-control">
                            </div>
                            @if($errors->has('admin_prenom'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('admin_prenom')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail <span
                                            class="text-danger">*</span></label>
                                <input required value="{{ old('admin_email') }}" name="admin_email" type="email"
                                       class="form-control">
                            </div>
                            @if($errors->has('admin_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_email')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <select required class="form-control" name="admin_role">
                                <option value="">Selectioner un role <span class="text-danger">*</span></option>
                                @if( Session::get('admin_role')==1)
                                <option value="1">Administrateur</option>
                                <option value="2">Utilisateur</option>
                                <option value="3">Autres utilisateur</option>
                                @else
                                <option value="2">Utilisateur</option>
                                <option value="3">Autres utilisateur</option>
                                @endif
                            </select>
                            @if($errors->has('admin_role'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_role')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <select class="form-control dynamic" id="name" name="admin_structure"
                                        data-dependent="user_role">
                                    <option value="">Selectionner une structure <span class="text-danger">*</span>
                                    </option>
                                    @foreach($EU as $v_eu)
                                    <option value="{{ $v_eu->name }}">
                                        {{ $v_eu->name }}
                                    </option>
                                    @endforeach
                                    @foreach($OF as $v_of)
                                    <option value="{{ $v_of->name }}">
                                        {{ $v_of->name }}
                                    </option>
                                    @endforeach
                                    @foreach($EI as $v_ei)
                                    <option value="{{ $v_ei->name }}">
                                        {{ $v_ei->name }}
                                    </option>
                                    @endforeach
                                </select>
                            </div>
                            @if($errors->has('admin_structure'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_structure')}}</small>
                            @endif
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <select class="form-control dynamic" id="user_role" name="user_role">
                                    <option value="">Categorie Structure <span class="text-danger">*</span></option>
                                </select>
                                @if($errors->has('user_role'))
                                <small class="form-text text-muted text-danger">{{$errors->first('user_role')}}</small>
                                @endif
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone <span class="text-danger">*</span> </label>
                                <input required value="{{ old('admin_phone') }}" name="admin_phone" type="text"
                                       class="form-control">
                                @if($errors->has('admin_phone'))
                                <small class="form-text text-muted text-danger">{{$errors->first('admin_phone')}}</small>
                                @endif
                            </div>

                        </div>
                        <div class="col-md-5">
                            <select class="form-control " name="admin_status">
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
                                <input accept="image/*" type="file" name="admin_image">
                            </div>
                            @if($errors->has('admin_image'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_image')}}</small>
                            @endif
                        </div>
                    </div>

                    <a href="/all-admin" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Creer
                    </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endif
@endsection