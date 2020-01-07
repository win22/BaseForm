@extends('admin_layout')
@section('contenu')

@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
@if(($of_info->of_certi) <= 1)

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
            <div class="card-header card-header-danger">
                <h4 class="card-title">Organisme de formation <i class="material-icons greenI">bubble_chart</i></h4>
                <p class="card-category">Modification des informations de l'organisme de formation {{ $of_info->name }}</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/update-of',$of_info->of_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Raison Social  <span  class="text-danger">*</span></label>
                                <input  value="{{ $of_info->name }}" name="name" type="text" class="form-control">
                            </div>
                            @if($errors->has('name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('name')}}</small>
                            @endif
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse  <span  class="text-danger">*</span></label>
                                <input  value="{{ $of_info->of_adresse }}" name="of_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('of_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_adresse')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse e-mail  <span  class="text-danger">*</span></label>
                                <input  value="{{ $of_info->of_email }}" name="of_email" type="email" class="form-control">
                            </div>
                            @if($errors->has('of_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone  <span  class="text-danger">*</span></label>
                                <input  value="{{$of_info->of_phone }}" name="of_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('of_phone'))
                            <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('of_phone')}}</small>
                            @endif
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <select class="form-control" id="of_etat" name="of_etat">
                                @if($of_info->of_etat == 'agrée')
                                <option class="text-success az" value="{{ $of_info->of_etat }}">Agrée Mase </option>
                                @else
                                <option class="text-danger az" value="{{ $of_info->of_etat }}">Non Agrée </option>
                                @endif
                            </select>
                            @if($errors->has('of_etat'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_etat')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date d'adhésion</label>
                                <input  value="{{ $of_info->of_date_ad }}" type="date" class="form-control text-success" min="1800-08-13" name="of_date_ad">
                            </div>
                            @if($errors->has('of_date_ad'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_date_ad')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control" name="of_formation">
                                <option value="{{ $of_info->of_formation }}">{{ $of_info->of_formation }}</option>
                                <option class="text-warning" value="">Formation  <span  class="text-danger">*</span></option>
                                @foreach($OF as $v_of)
                                <option value="{{ $v_of->formt_name }}" >
                                    {{ $v_of->formt_name	 }}
                                </option>
                                @endforeach
                            </select>
                            @if($errors->has('of_formation'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_formation')}}</small>
                            @endif
                        </div>

                    </div>

                    <div class="row">
                        <input  value="{{ $of_info->of_tok }}" name="of_tok" type="text" hidden>
                    </div>

                    <a href="/all-of" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">edit</i>
                        Modifier </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>

</div>
@endif
@endif
@endsection