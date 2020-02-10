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
                <h4 class="card-title ">Entreprises Utilisatrices <i class="fa fa-industry"></i></h4>
                <p class="card-eu">Listes des entreprises utilisatrice</p>

            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchEu">
                    <div class="input-group">
                        <div class="form-group">
                            <label class="bmd-label-floating text-white">Rechercher</label>
                            <input name="search" type="text" class="form-control text-white">
                        </div>
                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                            <i class="material-icons">search</i>
                            <div class="ripple-container"></div>
                        </button>
                    </div>
                </form>
                <div class="row">
                    <form action="/searchEUN">
                        <button rel="tooltip" title="Cliquer sur ce bouton afin d'afficher uniquement les entreprises
                         utilisatrices qui ne sont pas certifieés" type="submit" class="btn btn-warning btn-sm">
                            Normales
                            <div class="ripple-container"></div>
                        </button>
                    </form>
                    <form action="/searchEUE">
                        <button rel="tooltip" title="Cliquer sur ce bouton afin d'afficher uniquement
                         les entreprises utilisatrices  qui sont en démarches" type="submit"
                                class="btn btn-info btn-sm">
                            En démarches
                            <div class="ripple-container"></div>
                        </button>
                    </form>
                    <form action="/searchEUA">
                        <button rel="tooltip" title="Cliquer sur ce bouton afin d'afficher uniquement les
                         les entreprises
                         utilisatrices certifiées " type="submit" class="btn btn-success btn-sm">
                            Certifiées
                            <div class="ripple-container"></div>
                        </button>
                    </form> &nbsp;
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class=" text-danger">

                    <th class="text-center">Nom</th>
                    <th class="text-center">Adresse e-mail</th>
                    <th class="text-center">adresse</th>
                    <th class="text-center">Etat</th>
                    <th class="text-center">Date d'adhésion</th>
                    @if( Session::get('admin_role')==1)
                    <th class="text-center">Status</th>
                    @endif
                    <th class="text-center">Action</th>


                    </thead>


                    <tbody class="text-center">
                    @foreach ( $all_eu_info as $v_eu)
                    <tr>
                        </td>
                        <td style="font-family: 'Manjari Bold'" class="text-center">{{ $v_eu->name }}</td>
                        <td class="text-center">{{ $v_eu->eu_email }}</td>
                        <td class="text-center">{{ $v_eu->eu_adresse }}</td>
                        <td class="text-center">
                            @if($v_eu->eu_etat== 'agrée')
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Certifié Mase
                            </span>
                            @else
                            <span style="font-family: 'Manjari Bold'" class="text-info">
                                 {{ $v_eu->eu_etat }}
                            </span>
                            @endif
                        </td>

                        <td style="font-family: 'Manjari Bold'" class="center">{{ strftime("%d %B %Y",
                            strtotime($v_eu->eu_date_ad)) }}
                        </td>
                        @if( Session::get('admin_role')==1)
                        <td class="text-center">
                            @if($v_eu->eu_status==1)
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Activé
                        </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(233,32,3,0.88);">
                            Desactivé
                        </span>
                            @endif
                        </td>
                        @endif

                        <td class="td-actions ">
                            <a class="btn btn-info btn-link btn-sm" rel="tooltip" title="Visualiser" href="{{ URL::to('/detail-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            @if($v_eu->eu_status==1)
                            <a class="btn btn-primary btn-link btn-sm" rel="tooltip" title="Désactiver" href="{{ URL::to('/unactive-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">thumb_down_alt</i>
                            </a>
                            @else
                            <a class="btn btn-success btn-link btn-sm" rel="tooltip" title="Activer" href="{{ URL::to('/active-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">thumb_up</i>
                            </a>
                            @endif

                            @endif
                            @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                            <a class="btn btn-warning btn-link btn-sm" rel="tooltip" title="Modifier" href="{{ URL::to('/edit-eu/'.
                        $v_eu->eu_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            @endif
                            @if( Session::get('admin_role')==1)
                            <a class="btn btn-danger btn-link btn-sm" rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-eu/'.
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
                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 )
                <form action="/excel-eu">
                    <button type="submit" class="btn btn-success btn-sm">
                        <i class="fa fa-share"></i>&nbsp;
                        Exporter vers excel
                        <div class="ripple-container"></div>
                    </button>
                </form>
                @endif
                </p>
                @else
                <p class="text-center">Aucune information trouvé</p>
                @endif
                {{ $all_eu_info->links() }}
            </div>
        </div>
    </div>

</div>


@endsection