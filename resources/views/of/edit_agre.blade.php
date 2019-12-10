@extends('admin_layout')
@section('contenu')

@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
@if(($of_info->of_certi) >= 2)
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
                <p class="card-category">Modifier un agrément pour {{ $of_info->name }} </p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/update-agre-of',$of_info->of_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <select  class="form-control" name="name">
                                <option class="text-success" value="{{ $of_info->name }}">{{ $of_info->name }}</option>
                            </select>
                            @if($errors->has('name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('name')}}</small>
                            @endif
                        </div>

                        <div class="col-md-6">
                            <select  class="form-control" name="of_adresse">
                                <option class="text-success" value="{{ $of_info->of_adresse }}">{{ $of_info->of_adresse }}</option>
                            </select>
                            @if($errors->has('of_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_adresse')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <select  class="form-control" name="of_email">
                                    <option class="text-success" value="{{ $of_info->of_email }}">{{ $of_info->of_email }}</option>
                                </select>
                                @if($errors->has('of_email'))
                                <small class="form-text text-muted text-danger">{{$errors->first('of_email')}}</small>
                                @endif
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <select  class="form-control" name="of_phone">
                                    <option class="text-success" value="{{ $of_info->of_phone }}">{{ $of_info->of_phone }}</option>
                                </select>
                                @if($errors->has('of_phone'))
                                <small id="emailHelp" class="form-text text-muted text-danger">{{$errors->first('of_phone')}}</small>
                                @endif
                            </div>

                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control" name="of_etat">
                                    <option class="text-success" value="agrée">Agrée Mase </option>
                                </select>
                                @if($errors->has('of_etat'))
                                <small class="form-text text-muted text-danger">{{$errors->first('of_etat')}}</small>
                                @endif
                            </div>

                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control" name="of_date_ad">
                                    <option class="text-success" value="{{ $of_info->of_date_ad }}">{{  strftime("%d %B %Y", strtotime($of_info->of_date_ad)) }}</option>
                                </select>
                            </div>
                            @if($errors->has('of_date_ad'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_date_ad')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control" name="of_formation">
                                    <option class="text-danger" value="{{ $of_info->of_formation }}">{{ $of_info->of_formation }}</option>
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

                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de début</label>
                                <input value="{{ $of_info->of_date_debut }}" type="date" class="form-control text-success" min="1800-08-13" name="of_date_debut">
                            </div>
                            @if($errors->has('of_date_debut'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_date_debut')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="label">Date de fin</label>
                                <input value="{{ $of_info->of_date_fin }}" type="date" class="form-control text-danger" min="1800-08-13" name="of_date_fin">
                            </div>
                            @if($errors->has('of_date_fin'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_date_fin')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Durée </label>
                                <input value="{{ $of_info->of_time }}" name="of_time" type="text" class="form-control">
                            </div>
                            @if($errors->has('of_time'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_time')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <select  class="form-control" name="of_certi">
                                <option class="text-danger" value="{{ $of_info->of_certi }}">{{ $of_info->of_certi }}</option>
                                <option value="">Selectionner un nombre<span  class="text-danger">*</span> </option>
                                <option  value="1">Première certification</option>
                                <option  value="2">deuxième certification</option>
                                <option  value="3">Troisième certification</option>
                                <option  value="4">Quatrième certification</option>
                                <option value="5">Cinquème certification</option>

                            </select>
                            @if($errors->has('of_certi'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_certi')}}</small>
                            @endif
                        </div>
                        <input value="3" name="user_role" type="text" hidden>
                        <input  value="{{ $of_info->of_tok }}" name="of_tok" type="text" hidden>
                    </div>

                    <a href="/all-of" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">edit</i>
                        Modifier un agrément  </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>

</div>
@endif
@endif
@endsection