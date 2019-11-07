@extends('admin_layout')
@section('contenu')
@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') == 3)
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
    <p ref="#">Tous les utilisateurs</p>

</div>

<div class="col-md-12">
    <div class="card">
        <div class="row card-header card-header-info">
            <div class="col-md-8">
                <h4 class="card-title ">Stagiaires  <i class="material-icons oraI">supervised_user_circle</i></h4>
                <p class="card-admin">Liste des stagiaires</p>
            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchStag">
                    <div class="input-group">
                        <div class="form-group">
                            <label class="bmd-label-floating text-white">Rechercher</label>
                            <input  name="search" type="text" class="form-control text-white">
                        </div>
                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                            <i class="material-icons">search</i>
                            <div class="ripple-container"></div>
                        </button>
                    </div>

                </form>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class=" text-danger">

                    <th class="text-center">image</th>
                    <th class="text-center">Nom</th>
                    <th class="text-center">Adresse e-mail</th>
                    <th class="text-center">Téléphone</th>
                    <th class="text-center">Structure</th>
                    <th class="text-center">Date de Creation</th>
                    <th class="text-center">Status</th>
                    <th class="text-center">Action</th>

                    </thead>
                    <tbody>
                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                    @foreach ( $all_stag_info as $v_stag)
                    <tr>
                        <td class="text-center"><img src="{{ URL::to($v_stag->stag_image) }}"
                                                     style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td class="text-center">{{ $v_stag->stag_name }}</td>
                        <td class="text-center">{{ $v_stag->stag_email }}</td>
                        <td class="text-center">{{ $v_stag->stag_phone }}</td>
                        <td class="text-center">{{ $v_stag->stag_structure }}</td>
                        <td class="text-center">{{ $v_stag->created_at }}</td>
                        <td class="text-center">
                            @if($v_stag->stag_status==1)
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Activé
                        </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: red;" >
                            Desactivé
                        </span>
                            @endif
                        </td>
                        <td class="td-actions text-center">
                            @if( Session::get('admin_role')==1)
                            @if($v_stag->stag_status==1)
                            <a class="btn btn-primary btn-link btn-sm"  rel="tooltip" title="Désactiver" href="{{ URL::to('/unactive-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">thumb_down_alt</i>
                            </a>
                            @else
                            <a class="btn btn-success btn-link btn-sm"  rel="tooltip" title="Activer" href="{{ URL::to('/active-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">thumb_up</i>
                            </a>
                            @endif
                            @endif

                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Visualiser"  href="{{ URL::to('/details-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">edit</i>
                            </a>

                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-stag/'.
                        $v_stag->stag_id)}}" id="delete">
                                <i class="material-icons">close</i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                    @else
                    @foreach ( $all_stag_info1 as $v_stag)
                    <tr>
                        <td class="text-center"><img src="{{ URL::to($v_stag->stag_image) }}"
                                                     style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td class="text-center">{{ $v_stag->stag_name }}</td>
                        <td class="text-center">{{ $v_stag->stag_email }}</td>
                        <td class="text-center">{{ $v_stag->stag_phone }}</td>
                        <td class="text-center">{{ $v_stag->stag_structure }}</td>
                        <td class="text-center">{{ $v_stag->created_at }}</td>
                        <td class="text-center">
                            @if($v_stag->stag_status==1)
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Activé
                        </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: red;" >
                            Desactivé
                        </span>
                            @endif
                        </td>
                        <td class="td-actions text-center">
                            @if( Session::get('admin_role')==1)
                            @if($v_stag->stag_status==1)
                            <a class="btn btn-primary btn-link btn-sm"  rel="tooltip" title="Désactiver" href="{{ URL::to('/unactive-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">thumb_down_alt</i>
                            </a>
                            @else
                            <a class="btn btn-success btn-link btn-sm"  rel="tooltip" title="Activer" href="{{ URL::to('/active-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">thumb_up</i>
                            </a>
                            @endif
                            @endif

                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="visualiser"  href="{{ URL::to('/details-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">edit</i>
                            </a>

                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-stag/'.
                        $v_stag->stag_id)}}" id="delete">
                                <i class="material-icons">close</i>
                            </a>
                        </td>
                    </tr>
                    @endforeach

                    @endif
                    </tbody>
                </table>
                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <p  id="total_records">
                    @if($nb>0)
                    Total des informations : <span id="total_records">{{ $nb }}</span>
                </p>
                @else
                <p class="text-center">Aucune information trouvé</p>
                @endif
                @else
                <p  id="total_records">
                    @if($nb1>0)
                    Total des informations : <span id="total_records">{{ $nb1 }}</span>
                </p>
                @else
                <p class="text-center">Aucune information trouvé</p>
                @endif
                @endif

                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <p class="center">
                    {{ $all_stag_info->links() }}
                </p>
                @else
                <p class="center">
                    {{ $all_stag_info1->links() }}
                </p>
                @endif


            </div>
        </div>
    </div>

</div>
@endif
@endsection