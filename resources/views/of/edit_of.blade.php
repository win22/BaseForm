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
                <h4 class="card-title">Organisme de formation <i class="material-icons greenI">bubble_chart</i></h4>
                <p class="card-category">Modifier un Organisme de Formation</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/update-of',$of_info->of_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Raison Social</label>
                                <input  value="{{  $of_info->of_raison }}" name="of_raison" type="text" class="form-control">
                            </div>
                            @if($errors->has('of_raison'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_raison')}}</small>
                            @endif
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse</label>
                                <input  value="{{ $of_info->of_adresse  }}" name="of_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('of_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_adresse')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Email</label>
                                <input  value="{{ $of_info->of_email  }}" name="of_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('of_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Password</label>
                                <input  value="{{ $of_info->of_password  }}" name="of_password" type="password" class="form-control">
                            </div>
                            @if($errors->has('of_password'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_password')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone</label>
                                <input  value="{{ $of_info->of_phone  }}" name="of_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('of_phone'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('of_phone')}}</small>
                            @endif
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Formation Dispensées</label>
                                <input  value="{{ $of_info->of_formation  }}" name="of_formation" type="text" class="form-control">
                            </div>
                            @if($errors->has('of_formation'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_formation')}}</small>
                            @endif
                        </div>

                        <div class="col-md-4">
                            <select  class="form-control" name="admin_status">
                                @if($of_info->of_status == 1)
                                <option value="1">Status Activé</option>
                                @else
                                <option value="2">Status Désactivé</option>
                                @endif
                            </select>
                            @if($errors->has('of_status'))
                            <small class="form-text text-muted text-danger">{{$errors->first('admin_status')}}</small>
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