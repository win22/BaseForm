@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2)



<div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form  action="{{ url('/update-agre-of',$of_info->of_id)}}" method="post" >
        @csrf
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" style="font-family: 'Manjari Bold'" id="exampleModalLabel">Modification d'un nouvel agrément <span class="text-warning">{{ $of_info->name }}</span></h5>

                </div>
                <div class="modal-body">
                    <div hidden class="form-group">
                        <select  class="form-control" name="name">
                            <option class="text-success" value="{{ $of_info->name }}">{{ $of_info->name }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_adresse">
                            <option class="text-success" value="{{ $of_info->of_adresse }}">{{ $of_info->of_adresse }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_email">
                            <option class="text-success" value="{{ $of_info->of_email }}">{{ $of_info->of_email }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_tok">
                            <option class="text-success" value="{{ $of_info->of_tok}}">{{ $of_info->of_tok }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="user_role">
                            <option class="text-success" value="{{ $of_info->user_role }}">{{ $of_info->user_role }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_phone">
                            <option class="text-success" value="{{ $of_info->of_phone }}">{{ $of_info->of_phone }}</option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_etat">
                            <option class="text-success" value="agrée">Agrée Mase </option>
                        </select>
                    </div>
                    <div hidden class="form-group">
                        <select  class="form-control" name="of_date_ad">
                            <option class="text-success" value="{{ $of_info->of_date_ad }}">
                                {{  strftime("%d %B %Y", strtotime($of_info->of_date_ad)) }}</option>
                        </select>
                    </div>
                    <div  class="form-group">
                        <select  class="form-control" name="of_certi">
                            <option  value="{{ $of_info->of_certi }}"> {{ $of_info->of_certi }}</option>
                            <option class="text-warning"  value="">Ou</option>
                            <option  value="2">Deuxieme agrément</option>
                            <option  value="3">Troisieme agrément</option>
                            <option  value="4">Quatrieme agrément</option>
                            <option  value="5">Cinquieme agrément</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select  class="form-control" name="of_formation">
                            <option  value="{{ $of_info->of_formation }}"> {{ $of_info->of_formation }}</option>
                            <option class="text-warning" value="">Selectionner une autre  formation  <span  class="text-danger"></span></option>
                            @foreach($OF as $v_of)
                            <option value="{{ $v_of->formt_name }}" >
                                {{ $v_of->formt_name	 }}
                            </option>
                            @endforeach
                            @if($errors->has('of_formation'))
                            <small class="form-text text-muted text-danger">{{$errors->first('of_formation')}}</small>
                            @endif
                        </select>
                    </div>

                    <div  class="form-group">
                        <label class="label">Date de début</label>
                        <input  value="{{ $of_info->of_date_debut }}" type="date" class="form-control text-success" min="1800-08-13" name="of_date_debut">
                        @if($errors->has('of_date_debut'))
                        <small class="form-text text-muted text-danger">{{$errors->first('of_date_debut')}}</small>
                        @endif
                    </div>
                    <div  class="form-group">
                        <label class="label">Date de fin d'agrément <span  class="text-danger">*</span></label>
                        <input  value="{{ $of_info->of_date_fin }}" type="date" class="form-control text-danger" min="1800-08-13" name="of_date_fin">
                        @if($errors->has('of_date_fin'))
                        <small class="form-text text-muted text-danger">{{$errors->first('of_date_fin')}}</small>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Durée de l'agrément  </label>
                        <input value="{{ $of_info->of_time }}" name="of_time" type="text" class="form-control">
                        @if($errors->has('of_time'))
                        <small class="form-text text-muted text-danger">{{$errors->first('of_time')}}</small>
                        @endif
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-sm btn-info">Modifier </button>
                    <a href="{{ URL::to('/details-of/'.
                        $of_info->of_tok)}}" id="md." class="btn btn-danger btn-sm pull-right">
                        <i class="material-icons">cancel</i>
                        Annuler </a>&nbsp;
                </div>
            </div>
        </div>
    </form>
</div>

@endif
@endsection