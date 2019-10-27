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
                <h4 class="card-title">Évenements   <i class="fa fa-calendar"></i></h4>
                <p class="card-category">Modifier un évenement</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/update-even',$even_info->even_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom de l'évenement </label>
                                <input  value="{{ $even_info->even_name }}" name="even_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('even_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('even_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="label">Date de l'evénement</label>
                                <input type="date" value="{{ $even_info->even_date }}" class="form-control" min="1800-08-13" name="even_date">
                            </div>
                            @if($errors->has('even_date'))
                            <small class="form-text text-muted text-danger">{{$errors->first('even_date')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label class="bmd-label-floating">Déscription de l'évenement</label>
                                <textarea name="even_description" type="text" class="form-control" rows="5">
                                    {{ $even_info->even_description }}
                                </textarea>
                            </div>
                            @if($errors->has('even_description'))
                            <small class="form-text text-muted text-danger">{{$errors->first('even_description')}}</small>
                            @endif
                        </div>
                    </div>

                    <button type="submit" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </button>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Modifier un evenement </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endsection