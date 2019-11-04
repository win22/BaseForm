@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') == 3)

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
                <h4 class="card-title">Stagiaire   <i class="fa fa-user-plus"></i> </h4>
                <p class="card-category">Ajouter un stagiaire</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/save-stag')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom</label>
                                <input  value="{{ old('stag_name') }}" name="stag_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_name'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('stag_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom</label>
                                <input  value="{{ old('stag_prenom') }}" name="stag_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_prenom')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail</label>
                                <input  value="{{ old('stag_email') }}" name="stag_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('stag_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_email')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select class="form-control dynamic" id="name" name="stag_structure"
                                        data-dependent="of_id">
                                    <option value="">Selectionner une structure</option>

                                    @foreach($OF as $v_of)
                                    <option value="{{ $v_of->name }}" >
                                        {{ $v_of->name }}
                                    </option>
                                    @endforeach

                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    @foreach($OF_all as $v_of)
                                    <option value="{{ $v_of->name }}" >
                                        {{ $v_of->name }}
                                    </option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                            @if($errors->has('stag_structure'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_structure')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ old('stag_phone') }}" name="stag_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse</label>
                                <input  value="{{ old('stag_adresse') }}" name="stag_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('stag_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_adresse')}}</small>
                            @endif
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="stag_formation">
                                    <option value="">Selectionner une formationn</option>
                                    <option value="1">Formation 1</option>
                                    <option value="2">Formation 2</option>
                                </select>
                                @if($errors->has('stag_formation'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_formation')}}</small>
                                @endif
                            </div>

                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="stag_status">
                                    <option value="0">Status Désactivé</option>
                                </select>
                                @if($errors->has('stag_status'))
                                <small class="form-text text-muted text-danger">{{$errors->first('stag_status')}}</small>
                                @endif
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <label class="bmd-label-floating">Image de l'utilisateur</label><br>
                                <input required accept="image/*" type="file" name="stag_image">
                            </div>
                            @if($errors->has('stag_image'))
                            <small class="form-text text-muted text-danger">{{$errors->first('stag_image')}}</small>
                            @endif
                        </div>
                    </div>

                    <a href="/all-stag" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                    <button type="submit"  class="btn btn-success pull-right">
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