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
                <h4 class="card-title">Documents   <i class="fa fa-calendar"></i></h4>
                <p class="card-category">Modifier un document</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/update-doc',$doc_info->doc_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom de l'Document </label>
                                <input  value="{{ $doc_info->doc_name }}" name="doc_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('doc_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('doc_name')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label class="bmd-label-floating">contenu du Document</label>
                                <textarea name="doc_contenu" type="text" class="form-control form-control-plaintext">
                                    {{ $doc_info->doc_contenu }}
                                </textarea>
                            </div>
                            @if($errors->has('doc_contenu'))
                            <small class="form-text text-muted text-danger">{{$errors->first('doc_contenu')}}</small>
                            @endif
                        </div>
                    </div>

                    <button type="submit" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </button>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Modifier un docement </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
@endsection