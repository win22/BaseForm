@extends('admin_layout')
@section('contenu')
<div class="row">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Profil &nbsp;  <i class="material-icons">supervised_user_circle</i></h4>
                <p class="card-category">modifier votre mot de passe</p>
            </div>
            <div class="card-body">
                <form method="post" action="{{ url('/profil-admin-update',$admin_info->admin_id)}}">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nouveau mot de passe</label>
                                <input type="password" name="password" class="form-control">
                            </div>
                            @if($errors->has('password'))
                            <small class="form-text text-muted text-danger">{{$errors->first('password')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Confirmer mot de passe</label>
                                <input type="password" name="password_confirmation" class="form-control">
                            </div>
                            @if($errors->has('password_confirmation'))
                            <small class="form-text text-muted text-danger">{{$errors->first('password_confirmation')}}</small>
                            @endif
                        </div>
                    </div>
                    <button type="submit" class="btn btn-danger pull-right"><li class="material-icons">check</li>&nbsp; Confirmer</button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-profile">
            <div class="card-avatar">
                <a href="#pablo">
                    <img class="img" src="{{URL::to(Session::get('admin_image'))}}" />
                </a>
            </div>
            <div class="card-body">
                <h4 class="card-title">{{ Session::get('admin_structure') }} </h4>
                <h6 class="card-category text-gray">Vous étes
                    @if(Session::get('admin_role')==1)
                    Administrateur
                    @else
                    Utilisateur
                    @endif
                </h6>
                <h6 class="card-category text-gray">Téléphone : {{ Session::get('admin_phone') }}</h6>
                <h6 class="card-category text-gray">Email : {{ Session::get('admin_email') }}</h6>

            </div>
        </div>
    </div>
</div>

@endsection