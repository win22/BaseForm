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
    <p ref="#">Les Organismes de Formations</p>

</div>

<div class="col-md-12">
    <div class="card">
        <div class="row card-header card-header-info">
            <div class="col-md-8">
                <h4 class="card-title ">Intervenants  <i class="fa fa-user-circle-o"></i></h4>
                <p class="card-eu">Liste des intervenants</p>

            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchItv">
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
                    <thead class="text-center text-danger">

                    <th >Image</th>
                    <th>Code</th>
                    <th>N°de sécurité</th>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>sexe</th>
                    <th>Entreprise Intervenante</th>
                    <th>Date de Creation</th>
                    <th>Action</th>


                    </thead>


                    <tbody class="text-center">
                    @foreach ( $all_itv_info as $v_itv)
                    <tr>
                        </td>
                        <td><img src="{{ URL::to($v_itv->itv_image) }}"
                                 style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td class="center">{{ $v_itv->itv_code }}</td>
                        <td class="center">{{ $v_itv->itv_numsec }}</td>
                        <td class="center">{{ $v_itv->itv_name }}</td>
                        <td class="center">{{ $v_itv->itv_prenom }}</td>
                        <td class="center">
                            @if($v_itv->itv_sex==1)
                            <span class="label label-success">
                            Homme
                        </span>
                            @else
                            <span class="label label-warning">
                            Femme
                        </span>
                            @endif
                        </td>
                        <td class="center">{{ $v_itv->itv_ei }}</td>
                        <td class="center">{{ $v_itv->created_at }}</td>
                        <td class="td-actions ">
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-itv/'.
                        $v_itv->itv_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-itv/'.
                        $v_itv->itv_id)}}" id="delete">
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
                {{ $all_itv_info->links() }}
            </div>
        </div>
    </div>

</div>



@endsection