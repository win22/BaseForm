@extends('admin_layout')
@section('contenu')

<div class="row" >


    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
    <div id="alert2"  class="col-lg-3 col-md-6 col-sm-6">
        <div  class="card card-stats">
            <div class="card-header card-header-success card-header-icon">
                <p hidden>   {{ \Carbon\Carbon::setLocale('fr') }}</p>
                <div class="card-icon" href="/all-admin">
                    <i class="material-icons">supervised_user_circle</i>
                </div>
                <p class="card-category">Utilisateurs de la  BaseForm </p>
                <a href="/all-admin">
                    <h3 class="card-title">
                        {{ $all_admin_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>
                    @if(($all_admin_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    La dernière insertion a été effectuée le
                    {{  strftime("%d %B %Y", strtotime( $all_admin_date->created_at)) }}
                   ( {{ \Carbon\Carbon::parse($all_admin_date->created_at)->diffForHumans() }} )
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif
    <div id="alert3" class="col-lg-3 col-md-6 col-sm-6">
        <div   class="card card-stats">
            <div class="card-header card-header-warning card-header-icon">
                <div class="card-icon">
                    <i class="material-icons">bubble_chart</i>
                </div>
                <p class="card-category">Org. de formations</p>
                <a href="/all-of">
                    <h3 class="card-title">
                        {{ $all_of_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>
                    @if(($all_of_count) == null)
                    Aucune information n'a été trouvée
                    @else
                    La dernière insertion a été effectuée le
                    {{  strftime("%d %B %Y", strtotime( $all_of_date->created_at)) }}
                    ( {{ \Carbon\Carbon::parse($all_of_date->created_at)->diffForHumans() }} )
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div id="alert4" class="col-lg-3 col-md-6 col-sm-6">
        <div   class="card card-stats">
            <div class="card-header card-header-success card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-graduation-cap"></i>
                </div>
                <p class="card-category">Formations de Mase</p>
                <a href="/all-formt">
                    <h3 class="card-title">
                        {{ $all_formt_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>
                    @if(($all_formt_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    La dernière insertion a été effectuée le
                    {{  strftime("%d %B %Y", strtotime( $all_formt_date->created_at)) }}
                    ( {{ \Carbon\Carbon::parse($all_formt_date->created_at)->diffForHumans() }} )
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div id="alert5"  class="col-lg-3 col-md-6 col-sm-6">
        <div  class="card card-stats">
            <div class="card-header card-header-info card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-crop"></i>
                </div>
                <p class="card-category">Entreprises Intervenantes</p>
                <a href="/all-ei">
                    <h3 class="card-title">
                        {{ $all_ei_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>
                    @if(($all_ei_count) == null)
                    Aucune information n'a été trouvée
                    @else
                    La dernière insertion a été effectuée
                    {{  strftime("%d %B %Y", strtotime( $all_ei_date->created_at)) }}
                    {{ \Carbon\Carbon::parse($all_ei_date->created_at)->diffForHumans() }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
</div>
<div class="row">
    <div  id="alert7"  class="col-lg-3 col-md-6 col-sm-6">
        <div  class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-industry"></i>
                </div>
                <p class="card-category">Entreprises utilisatrices</p>
                <a href="/all-eu">
                    <h3 class="card-title">
                        {{ $all_eu_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>
                    @if(($all_eu_count) == null)
                    Aucune information n'a été trouvée
                    @else
                    La dernière insertion a été effectuée le
                    {{  strftime("%d %B %Y", strtotime( $all_eu_date->created_at)) }}
                    ( {{ \Carbon\Carbon::parse($all_eu_date->created_at)->diffForHumans() }} )
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div id="alert8" class="col-lg-3 col-md-6 col-sm-6">
        <div   class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-users"></i>
                </div>
                <p class="card-category">Formateurs</p>
                <a href="/all-form">
                    <h3 class="card-title">
                        {{ $all_form_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>
                    @if(($all_form_count) == null)
                        Aucune information n'a été trouvé
                    @else
                    La dernière insertion a été effectuée le
                    {{  strftime("%d %B %Y", strtotime( $all_form_date->created_at)) }}
                    ( {{ \Carbon\Carbon::parse($all_form_date->created_at)->diffForHumans() }} )
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif


    <div   id="alert9" class="col-lg-3 col-md-6 col-sm-6">
        <div class="card card-stats">
            <div class="card-header card-header-info card-header-icon">
                <div class="card-icon" href="/all-stag">
                    <i class="fa fa-asl-interpreting"></i>
                </div>
                <p class="card-category">Apprenants</p>
                <a href="/all-stag">
                    <h3 class="card-title">
                        {{ $all_stag_count }}
                    </h3>
                </a>
            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>
                    @if(($all_stag_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    La dernière insertion a été effectuée le
                    {{  strftime("%d %B %Y", strtotime( $all_stag_date->created_at)) }}
                    ( {{ \Carbon\Carbon::parse($all_stag_date->created_at)->diffForHumans() }})
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-lg-6 col-md-12">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Formateurs </h4>
                @if(Session::get('admin_role') ==1 || Session::get('admin_role') ==2 )
                <marquee>
                    <p class="card-category">
                        @if(($all_form_count) == null)
                        Aucune information n'a été trouvé
                        @else
                        Un nouveau formateur a été ajouté le <strong class="text-white">
                            {{  strftime("%d %B %Y", strtotime( $all_form_date->created_at)) }}
                            ( {{ \Carbon\Carbon::parse($all_form_date->created_at)->diffForHumans() }} )
                            Par l'entreprise {{ $all_form_of->form_of }}
                        </strong>
                        @endif
                    </p>
                </marquee>

                @else
                Liste des formateurs les plus récents
                @endif
            </div>
            <div class="card-body table-responsive">
                <table class="table table-hover">
                    <thead class="text-warning">
                    <th>Photo</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Entreprise </th>
                    <th></th>
                    </thead>
                    <tbody>
                    @foreach ( $all_form_info as $v_form)
                    <tr>
                        <td><img src="{{ URL::to($v_form->form_image) }}"
                                                     style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td  style="font-family: 'Manjari Bold'">{{ $v_form->form_name }}</td>
                        <td>{{ $v_form->form_prenom }}</td>
                        <td class="text-danger">{{ $v_form->form_of }}
                            <td>
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Visualiser"  href="{{ URL::to('/details-form/'.
                        $v_form->form_token)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-lg-6 col-md-12">
        <div class="card">
            <div class="card-header card-header-warning">
                <h4 class="card-title">Apprenants  </h4>
                    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <marquee>
                    <p class="card-category">
                        @if(($all_stag_count) == null)
                        Aucune information n'a été trouvé
                        @else
                        Un nouveau apprenant a été ajouté le <strong class="text-white">
                            {{  strftime("%d %B %Y", strtotime( $all_stag_date->created_at)) }}
                            ( {{ \Carbon\Carbon::parse($all_stag_date->created_at)->diffForHumans() }} )
                            Par l'entreprise {{ $all_stag_structure->stag_structure }}
                        </strong>
                        @endif
                    </p>
                </marquee>
                @else
                <p class="card-title">
                    Listes des Apprénants nouvellement ajouté
                </p>
                @endif
            </div>
            <div class="card-body table-responsive">
                <table class="table table-hover">
                    <thead class="text-warning">
                    <th>Photo</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Entreprise </th>
                    <th></th>
                    </thead>
                    <tbody>
                    @foreach ( $all_stag_info as $v_stag)
                    <tr>
                        <td><img src="{{ URL::to($v_stag->stag_image) }}"
                                 style=" height: 40px; width: 40px; border-radius: 15px;">
                        </td>
                        <td  style="font-family: 'Manjari Bold'">{{ $v_stag->stag_name }}</td>
                        <td>{{ $v_stag->stag_prenom }}</td>
                        <td class="text-danger">{{ $v_stag->stag_structure }}
                        <td>
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="Visualiser"  href="{{ URL::to('/details-stag/'.
                        $v_stag->stag_token)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection