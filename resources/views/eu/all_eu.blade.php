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

<div class="col-md-12">
    <div class="card">
        <div class="row card-header card-header-info">
            <div class="col-md-8">
                <h4 class="card-title ">Entreprise Utilisatrice  <i class="fa fa-industry"></i></h4>
                <p class="card-eu">les differentes entreprises utilisatrice de votre base de données</p>

            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchEu">
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

                    <th>Nom</th>
                    <th>Email</th>
                    <th>Téléphone</th>
                    <th>adresse</th>
                    <th>Date de Creation</th>
                    <th>Directeur</th>
                    <th>Status</th>
                    <th>Action</th>


                    </thead>


                    <tbody>
                    @foreach ( $all_eu_info as $v_eu)
                    <tr>
                        </td>
                        <td class="center">{{ $v_eu->eu_name }}</td>
                        <td class="center">{{ $v_eu->eu_email }}</td>
                        <td class="center">{{ $v_eu->eu_phone }}</td>
                        <td class="center">{{ $v_eu->eu_adresse }}</td>
                        <td class="center">{{ $v_eu->eu_nameDi }}</td>
                        <td class="center">{{ $v_eu->created_at }}</td>

                        <td class="center">
                            @if($v_eu->eu_status==1)
                            <span class="label label-success">
                            Activé
                        </span>
                            @else
                            <span class="label label-warning">
                            Desactivé
                        </span>
                            @endif
                        </td>
                        <td class="td-actions ">
                            @if($v_eu->eu_status==1)
                            <a class="btn btn-primary btn-link btn-sm"  rel="tooltip" title="Désactiver" href="{{ URL::to('/unactive-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">thumb_down_alt</i>
                            </a>
                            @else
                            <a class="btn btn-success btn-link btn-sm"  rel="tooltip" title="Activer" href="{{ URL::to('/active-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">thumb_up</i>
                            </a>
                            @endif
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-eu/'.
                        $v_eu->eu_id)}}" id="delete">
                                <i class="material-icons">close</i>
                            </a>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                <p id="total_records">
                    @if($nb>0)
                    Total des informations : <span id="total_records">{{ $nb }}</span>
                    @else
                    Aucune information trouvé
                    @endif
                </p>
                {{ $all_eu_info->links() }}
            </div>
        </div>
    </div>

</div>



@endsection