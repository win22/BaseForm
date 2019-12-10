@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2
|| Session::get('admin_role')== 3
&& Session::get('admin_structure')== $form_info->form_of
&& $form_info->form_etat == 'non agréé'
)

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
                <h4 class="card-title">Formateurs</h4>
                <p class="card-category">Modifier un formateur</p>
            </div>
            <div class="card-body">
                <form action="{{ url('/update-form',$form_info->form_id)}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nom <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_name }}" name="form_name" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_name'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_name')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Prenom <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_prenom }}" name="form_prenom" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_prenom'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_prenom')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Adresse <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_adresse }}" name="form_adresse" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_adresse'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_adresse')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">Téléphone <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_phone }}" name="form_phone" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_phone'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_phone')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="bmd-label-floating">adresse e-mail <span  class="text-danger">*</span></label>
                                <input  value="{{ $form_info->form_email }}" name="form_email" type="text" class="form-control">
                            </div>
                            @if($errors->has('form_email'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_email')}}</small>
                            @endif
                        </div>
                        <div class="col-md-4">
                            <select  class="form-control " name="form_sexe">
                                @if($form_info->form_sexe == 1)
                                <option value="{{ $form_info->form_sexe }}">Homme </option>
                                @else
                                <option value="{{ $form_info->form_sexe }}">Homme </option>
                                @endif
                                <option value="">Sexe <span  class="text-danger">*</span> </option>
                                <option value="1">Homme</option>
                                <option value="2">Femme </option>
                            </select>
                            @if($errors->has('form_sexe'))
                            <small class="form-text text-muted text-danger">{{$errors->first('form_sexe')}}</small>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control " name="form_etat">
                                    @if($form_info->form_etat == 'agrée')
                                    <option class="text-success" value="{{ $form_info->form_sexe }}">Agréé par Mase </option>
                                    @else
                                    <option class="text-danger" value="{{ $form_info->form_sexe }}">Non agréé  </option>
                                    @endif

                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    <option value="">Etat du formateur <span  class="text-danger">*</span> </option>
                                    <option class="text-success" value="agrée">agrée par Mase</option>
                                    <option class="text-danger" value="non">Non agréé </option>
                                    @endif


                                </select>
                                @if($errors->has('form_etat'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_etat')}}</small>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <select  class="form-control text-warning " name="form_of">
                                    <option value="{{ $form_info->form_of }}">{{ $form_info->form_of }}</option>

                                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                                    @foreach($OF_all as $v_of)
                                    <option value="{{ $v_of->name }}" >
                                        {{ $v_of->name }}
                                    </option>
                                    @endforeach
                                    @endif
                                </select>
                                @if($errors->has('form_of'))
                                <small class="form-text text-muted text-danger">{{$errors->first('form_of')}}</small>
                                @endif
                            </div>
                        </div>
                    </div>
                    <a href="/all-form" id="md." class="btn btn-danger pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;

                    <button type="submit" id="md." class="btn btn-success pull-right">
                        <i class="material-icons">edit</i>
                        Modifer </button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
@endif
@endsection