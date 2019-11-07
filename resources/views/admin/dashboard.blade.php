@extends('admin_layout')
@section('contenu')

<div class="row" >

    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
    <div id="alert2"  class="col-lg-3 col-md-6 col-sm-6">
        <div  class="card card-stats">
            <div class="card-header card-header-success card-header-icon">

                <div class="card-icon" href="/all-admin">
                    <i class="material-icons">supervised_user_circle</i>
                </div>
                <p class="card-category">Utilisateurs de la plateforme</p>
                <a href="/all-admin">
                    <h3 class="card-title">
                        {{ $all_admin_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_admin_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_admin_date->created_at }}
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
                <p class="card-category">Organisme de formation</p>
                <a href="/all-of">
                    <h3 class="card-title">
                        {{ $all_of_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_of_count) == null)
                    Aucune information n'a été trouvée
                    @else
                    {{ $all_of_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div  id="alert4"  class="col-lg-3 col-md-6 col-sm-6">
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
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_eu_count) == null)
                    Aucune information n'a été trouvée
                    @else
                    {{ $all_eu_date->created_at }}
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
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_ei_count) == null)
                    Aucune information n'a été trouvée
                    @else
                    {{ $all_ei_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
</div>
<div class="row">

    <div id="alert6" class="col-lg-3 col-md-6 col-sm-6">
        <div  class="card card-stats">
            <div class="card-header card-header-warning card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-user"></i>
                </div>
                <p class="card-category">Intervenants </p>
                <a href="/all-itv">
                    <h3 class="card-title">
                        {{ $all_itv_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_itv_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_itv_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div id="alert7" class="col-lg-3 col-md-6 col-sm-6">
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
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_form_count) == null)
                        Aucune information n'a été trouvé
                    @else
                    {{ $all_form_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif

    <div id="alert8" class="col-lg-3 col-md-6 col-sm-6">
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
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_formt_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_formt_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
    <div id="alert9" class="col-lg-3 col-md-6 col-sm-6">
        <div    class="card card-stats">
            <div class="card-header card-header-warning card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-calendar"></i>
                </div>
                <p class="card-category">Évenements</p>
                <a href="/all-even">
                    <h3 class="card-title">
                        {{ $all_even_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_even_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_even_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif
</div>
<div class="row" >
    <div   id="alert10" class="col-lg-3 col-md-6 col-sm-6">
        <div class="card card-stats">
            <div class="card-header card-header-info card-header-icon">
                <div class="card-icon" href="/all-admin">
                    <i class="fa fa-book"></i>
                </div>
                <p class="card-category">Documents</p>
                <a href="/all-doc">
                    <h3 class="card-title">
                        {{ $all_doc_count }}
                    </h3>
                </a>
            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_doc_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_doc_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>

    @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2 || Session::get('user_role') == 3 )
    <div   id="alert11" class="col-lg-3 col-md-6 col-sm-6">
        <div class="card card-stats">
            <div class="card-header card-header-info card-header-icon">
                <div class="card-icon" href="/all-stag">
                    <i class="fa fa-user-o"></i>
                </div>
                <p class="card-category">Stagiaires</p>
                <a href="/all-stag">
                    <h3 class="card-title">
                        {{ $all_stag_count }}
                    </h3>
                </a>
            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_stag_count) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_stag_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endif
</div>



@endsection