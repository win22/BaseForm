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
                <h4 class="card-title">Document <i class="fa fa-book"></i> &nbsp;</h4>
                <p class="card-category">Ajouter un Document</p>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" action="{{ url('/save-doc')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom du Document</label>
                                <input  value="{{ old('doc_name') }}" name="doc_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('doc_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('doc_name')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label class="bmd-label-floating">Contenu du Document</label>
                                <textarea  value="{{ old('doc_contenu') }}" name="doc_contenu" type="text" class="form-control form-control-plaintext"></textarea>
                            </div>
                            @if($errors->has('doc_contenu'))
                            <small class="form-text text-muted text-danger">{{$errors->first('doc_contenu')}}</small>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <label class="bmd-label-floating" style="color: black !important;">Choisir le document</label><br>
                                <input  required accept=".pdf,.doc" type="file" name="doc_file">
                            </div>
                            @if($errors->has('doc_file'))
                            <small class="form-text text-muted text-danger">{{$errors->first('doc_file')}}</small>
                            @endif
                        </div>
                    </div>

                    <button type="submit" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </button>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">check</i>
                        Creer </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>

</div>
@endif
@endsection