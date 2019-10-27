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
                <h4 class="card-title"> Formation <i class="fa fa-graduation-cap"></i> &nbsp;</h4>
                <p class="card-category">Modifier une Formation</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/update-formt',$formt_info->formt_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom du formation</label>
                                <input  value="{{ $formt_info->formt_name }}" name="formt_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('formt_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('formt_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Organisme</label>
                                <input  value="{{ $formt_info->formt_of }}" name="formt_of" type="text" class="form-control">
                            </div>
                            @if($errors->has('formt_of'))
                            <small class="form-text text-muted text-danger">{{$errors->first('formt_of')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Validité (Ans)</label>
                                <input  value="{{$formt_info->formt_valide }}" name="formt_valide" type="text" class="form-control">
                            </div>
                            @if($errors->has('formt_valide'))
                            <small class="form-text text-muted text-danger">{{$errors->first('formt_valide')}}</small>
                            @endif
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Temps avant alerte</label>
                                <input  value="{{ $formt_info->formt_time }}" name="formt_time" type="text" class="form-control">
                            </div>
                            @if($errors->has('formt_time'))
                            <small class="form-text text-muted text-danger">{{$errors->first('formt_time')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contenue de la formation</label>
                                <textarea name="formt_contenu" type="text" class="form-control form-control-plaintext">
                                    {{ $formt_info->formt_contenu }}
                                </textarea>
                            </div>
                            @if($errors->has('formt_contenu'))
                            <small class="form-text text-muted text-danger">{{$errors->first('formt_contenu')}}</small>
                            @endif
                        </div>
                    </div>

                    <button type="submit" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </button>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Modifier une formation </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endsection