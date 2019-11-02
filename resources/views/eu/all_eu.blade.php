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
                <h4 class="card-title ">Entreprises Utilisatrices  <i class="fa fa-industry"></i></h4>
                <p class="card-eu">Listes des entreprises utilisatrice</p>

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

                    <th class="text-center">Nom</th>
                    <th class="text-center">Adresse e-mail</th>
                    <th class="text-center">Téléphone</th>
                    <th class="text-center">adresse</th>
                    <th class="text-center">Directeur</th>
                    <th class="text-center">Date de Creation</th>
                    <th class="text-center">Action</th>


                    </thead>


                    <tbody class="text-center">
                    @foreach ( $all_eu_info as $v_eu)
                    <tr>
                        </td>
                        <td class="text-center">{{ $v_eu->eu_name }}</td>
                        <td class="text-center">{{ $v_eu->eu_email }}</td>
                        <td class="text-center">{{ $v_eu->eu_phone }}</td>
                        <td class="text-center">{{ $v_eu->eu_adresse }}</td>
                        <td class="text-center">{{ $v_eu->eu_nameDi }}</td>
                        <td class="center">{{ $v_eu->created_at }}</td>

                        <td class="td-actions ">
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/detail-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            @endif
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