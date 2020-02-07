@extends('admin_layout')
@section('contenu')

@if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('admin_role') == 3)
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
                <h4 class="card-title ">Formateurs</h4>
                <p class="card-form">Liste des formateurs</p>

            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchForm">
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
                <div class="row">
                    <form action="/searchOfA">
                        <button  rel="tooltip" title="Cliquer sur ce bouton afin d'afficher les formateurs Agrées " type="submit" class="btn btn-success btn-sm">
                            Agrée
                            <div class="ripple-container"></div>
                        </button>
                    </form> &nbsp;
                    <form action="/searchOfN">
                        <button  rel="tooltip" title="Cliquer sur ce bouton afin d'afficher les formateurs qui ne sont pas Agrées" type="submit" class="btn btn-warning btn-sm">
                            Non Agrée
                            <div class="ripple-container"></div>
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="text-center text-danger">

                    <th class="text-center">Photo</th>
                    <th>Nom</th>
                    <th>Téléphone </th>
                    <th>Organisme de formation </th>
                    <th>Adresse e-mail </th>
                    <th style="font-family: 'Manjari Bold'">Etat</th>
                    @if( Session::get('admin_role')==1)
                    <th>Status</th>
                    @endif
                    <th>Action</th>

                    </thead>
                    <tbody class="text-center">
                    @foreach ( $all_form_info as $v_form)
                    <tr>
                        <td class="text-center"><img src="{{ URL::to($v_form->form_image) }}"
                                                     style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td  style="font-family: 'Manjari Bold'">{{ $v_form->form_name }}</td>
                        <td class="center">{{ $v_form->form_phone }}</td>
                        <td class="text-center">
                            @if($v_form->form_of)
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,59,128,0.88);">
                            {{ $v_form->form_of }}</i>
                        </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(191,29,3,0.88);">
                            Null
                        </span>
                            @endif
                        </td>
                        <td class="center">{{ $v_form->form_email }}</td>
                        <td class="text-center">
                            @if($v_form->form_etat=='agrée')
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(0,128,0,0.88);">
                            Agréé par Mase <i class="fa fa-certificate"></i>
                        </span>
                            @else
                            <span class="label" style="font-family: 'Manjari Bold'; color: rgba(233,50,13,0.88);">
                            Non agréé
                        </span>
                            @endif
                        </td>
                        @if( Session::get('admin_role')==1)
                        <td class="text-center">
                            @if($v_form->form_status==1)
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
                        <td class="td-actions">
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Visualiser"  href="{{ URL::to('/details-form/'.
                        $v_form->form_token)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            @if($v_form->form_status==1)
                            <a class="btn btn-primary btn-link btn-sm"  rel="tooltip" title="Désactiver" href="{{ URL::to('/unactive-form/'.
                        $v_form->form_id)}}">
                                <i class="material-icons">thumb_down_alt</i>
                            </a>
                            @else
                            <a class="btn btn-success btn-link btn-sm"  rel="tooltip" title="Activer" href="{{ URL::to('/active-form/'.
                        $v_form->form_id)}}">
                                <i class="material-icons">thumb_up</i>
                            </a>
                            @endif
                            @endif
                            @if( Session::get('admin_role')==1 || Session::get('admin_role')==2
                            || Session::get('admin_role')== 3
                            && Session::get('admin_structure')== $v_form->form_of
                            && $v_form->form_etat == 'non' )
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-form/'.
                                 $v_form->form_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-form-fo/'.
                                 $v_form->form_token)}}" id="delete">
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

                {{ $all_form_info->links() }}
            </div>
        </div>
    </div>

</div>


@endif
@endsection