@extends('admin_layout')
@section('contenu')
@if( Session::get('admin_role')==1 || Session::get('admin_role')==2 )
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
                <h4 class="card-title ">Formation  <i class="fa fa-graduation-cap"></i></h4>
                <p class="card-form">les differentes formations de votre base de données</p>

            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchFormt">
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

                    <th>Nom</th>
                    <th>Durée</th>
                    <th>Desciption</th>
                    <th>Type</th>
                    <th>Date de création</th>
                    <th>Action</th>


                    </thead>


                    <tbody class="text-center">
                    @foreach ( $all_formt_info as $v_formt)
                    <tr>
                        </td>
                        <td class="center" style="font-family:'Manjari Bold'">{{ $v_formt->formt_name }}</td>
                        <td class="center">{{ $v_formt->formt_time }}</td>
                        <td class="center ellipsis">{{ $v_formt->formt_contenu }}</td>
                        <td class="text-center">
                            @if($v_formt->formt_type=='certifie')
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Certifié MASE
                        </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: red;" >
                            Non certifié MASE
                        </span>
                            @endif

                        </td>
                        <td class="center">{{ $v_formt->created_at }}</td>
                        <td class="td-actions">
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Visualiser"  href="{{ URL::to('/details-formt/'.
                                 $v_formt->formt_id)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            @if( Session::get('admin_role')==1 || Session::get('admin_role')==2 )
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-formt/'.
                                 $v_formt->formt_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-formt/'.
                                 $v_formt->formt_id)}}" id="delete">
                                <i class="material-icons">close</i>
                            </a>
                            @endif
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


                {{ $all_formt_info->links() }}
            </div>
        </div>
    </div>

</div>


@endif
@endsection