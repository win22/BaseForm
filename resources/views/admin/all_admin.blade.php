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
    <p ref="#">Tous les utilisateurs</p>

</div>

<div class="col-md-12">
    <div class="card">
        <div class="row card-header card-header-info">
            <div class="col-md-8">
                <h4 class="card-title ">Utilisateurs  <i class="material-icons oraI">supervised_user_circle</i></h4>
                <p class="card-admin">Liste des utilisateurs</p>
            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchUser">
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
                    <th class="text-center">Structure</th>
                    <th class="text-center">Date de Creation</th>
                    <th class="text-center">Role</th>
                    <th class="text-center">Status</th>
                    <th class="text-center">Action</th>

                    </thead>
                    <tbody>
                    @foreach ( $all_admin_info as $v_admin)
                    <tr>
                        <td class="text-center"><img src="{{ URL::to($v_admin->admin_image) }}"
                                 style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td style="font-family: 'Manjari Bold'" class="text-center">{{ $v_admin->admin_prenom }}</td>
                        <td class="text-center">{{ $v_admin->admin_email }}</td>
                        <td style="font-family: 'Manjari Bold'" class="text-center">{{ $v_admin->admin_structure }}</td>
                        <td class="text-center">{{  strftime("%d %B %Y", strtotime($v_admin->created_at)) }}</td>
                        <td class="text-center">
                            @if($v_admin->admin_role==1)
                            <span class="label" style="font-family: 'Manjari Bold'; color: #ff6a0f;">
                            Administrateur
                            </span>
                            @elseif($v_admin->admin_role==2)
                            <span class="label" style="font-family: 'Manjari Bold'; color: #05af5a;">
                            Utilisateur
                            </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: #09a2ff;">
                            Autres utilisateurs
                            </span>
                            @endif
                        </td>
                        <td class="text-center">
                            @if($v_admin->admin_status==1)
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
                            @if($v_admin->admin_status==1)
                            <a class="btn btn-primary btn-link btn-sm"  rel="tooltip" title="Désactiver" href="{{ URL::to('/unactive-admin/'.
                        $v_admin->admin_id)}}">
                                <i class="material-icons">thumb_down_alt</i>
                            </a>
                            @else
                            <a class="btn btn-success btn-link btn-sm"  rel="tooltip" title="Activer" href="{{ URL::to('/active-admin/'.
                        $v_admin->admin_id)}}">
                                <i class="material-icons">thumb_up</i>
                            </a>
                            @endif
                            @endif
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Visualiser"  href="{{ URL::to('/details-admin/'.
                        $v_admin->admin_id)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-admin/'.
                        $v_admin->admin_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-admin/'.
                        $v_admin->admin_id)}}" id="delete">
                                <i class="material-icons">close</i>
                            </a>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                <p  id="total_records">
                    @if($nb>0)
                    Total des informations : <span id="total_records">{{ $nb }}</span>
                </p>
                @else
                <p class="text-center">Aucune information trouvé</p>
                @endif
                <p class="center">
                    {{ $all_admin_info->links() }}
                </p>


            </div>
        </div>
    </div>

</div>
@endif
@endsection