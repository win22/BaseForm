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
    <p ref="#">Tous les utilisateurs</p>

</div>

<div class="col-md-12">
    <div class="card">
        <div class="row card-header card-header-info">
            <div class="col-md-8">
                <h4 class="card-title ">Stagiaires   <i class="fa fa-asl-interpreting"></i></h4>
                <p class="card-admin">Liste des autres stagiaires</p>
            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchStagOf">
                    <div class="input-group">
                        <div class="form-group">
                            <label class="bmd-label-floating text-white">Rechercher par structure</label>
                            <input  name="search" type="text" class="form-control text-white">
                        </div>
                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                            <i class="material-icons">search</i>
                            <div class="ripple-container"></div>
                        </button>
                    </div>
                </form>
                <div class="row">
                    <form action="/searchStagA">
                        <button  rel="tooltip" title="Cliquer sur ce bouton afin d'afficher les apprenants certifiés " type="submit" class="btn btn-success btn-sm">
                            Certifié
                            <div class="ripple-container"></div>
                        </button>
                    </form> &nbsp;
                    <form action="/searchStagN">
                        <button  rel="tooltip" title="Cliquer sur ce bouton afin d'afficher les apprenants qui ne sont pas certifiés" type="submit" class="btn btn-warning btn-sm">
                            Non certifié
                            <div class="ripple-container"></div>
                        </button>
                    </form>
                </div>
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
                    <th class="text-center">État</th>
                    <th class="text-center">Structure</th>
                    @if( Session::get('admin_role')==1 || Session::get('admin_role')==2 )
                    <th class="text-center">Status</th>
                    @endif
                    <th class="text-center">Action</th>

                    </thead>
                    <tbody>
                    @foreach ( $all_stag_info as $v_stag)
                    <tr>
                        <td class="text-center"><img src="{{ URL::to($v_stag->stag_image) }}"
                                                     style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td class="text-center" style="font-family: 'Manjari Bold'">{{ $v_stag->stag_name }}</td>
                        <td class="text-center">{{ $v_stag->stag_email }}</td>
                        <td class="text-center">{{ $v_stag->stag_phone }}</td>
                        <td class="text-center">
                            @if($v_stag->stag_etat=='agrée')
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                                Certifié Mase  <i class="fa fa-certificate"></i>
                        </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: red;" >
                          Non certifié Mase
                        </span>
                            @endif
                        </td>
                        <td style="font-family: 'Manjari Bold'" class="text-center text-danger">{{ $v_stag->stag_structure }}</td>
                        @if( Session::get('admin_role')==1 || Session::get('admin_role')==2 )
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
                        @endif
                        <td class="td-actions text-center">
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Visualiser"  href="{{ URL::to('/details-stag/'.
                        $v_stag->stag_token)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                            || Session::get('user_role')== 3
                            && Session::get('admin_structure')== $v_stag->stag_structure &&  $v_stag->stag_etat == 'non'   )

                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-stag/'.
                        $v_stag->stag_id)}}">
                                <i class="material-icons">edit</i>
                            </a>

                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-stag-ap/'.
                        $v_stag->stag_token)}}" id="delete">
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
                <p class="text-center">Aucune information n'a été trouvée</p>
                @endif
                <a class="text-danger" href="/all-stag">Retour</a>

                {{ $all_stag_info->links() }}


            </div>
        </div>
    </div>

</div>

@endsection