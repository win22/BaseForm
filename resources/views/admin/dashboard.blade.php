@extends('admin_layout')
@section('contenu')

<div class="row" >

    <div  class="col-lg-3 col-md-6 col-sm-6">
        <div id="alert2" class="card card-stats">
            <div class="card-header card-header-warning card-header-icon">

                <div class="card-icon" href="/all-admin">
                    <i class="material-icons">supervised_user_circle</i>
                </div>
                <p class="card-category">Utilisateurs de la Platform</p>
                <a href="/all-admin">
                    <h3 class="card-title">
                        {{ $all_admin_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_admin_date) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_admin_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6">
        <div  id="alert3" class="card card-stats">
            <div class="card-header card-header-success card-header-icon">
                <div class="card-icon">
                    <i class="material-icons">bubble_chart</i>
                </div>
                <p class="card-category">Organisation de Formations</p>
                <a href="/all-of">
                    <h3 class="card-title">
                        {{ $all_of_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_of_date) == null)
                    Aucune information n'a été trouvée
                    @else
                    {{ $all_of_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div  class="col-lg-3 col-md-6 col-sm-6">
        <div  id="alert4" class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-industry"></i>
                </div>
                <p class="card-category">Entreprise utilisatrices</p>
                <a href="/all-eu">
                    <h3 class="card-title">
                        {{ $all_eu_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_eu_date) == null)
                    Aucune information n'a été trouvée
                    @else
                    {{ $all_eu_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div  class="col-lg-3 col-md-6 col-sm-6">
        <div id="alert5" class="card card-stats">
            <div class="card-header card-header-info card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-building"></i>
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
                    @if(($all_ei_date) == null)
                    Aucune information n'a été trouvée
                    @else
                    {{ $all_ei_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-3 col-md-6 col-sm-6">
        <div id="alert6" class="card card-stats">
            <div class="card-header card-header-rose card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-user-circle-o"></i>
                </div>
                <p class="card-category">Gestion des Intervenants </p>
                <a href="/all-itv">
                    <h3 class="card-title">
                        {{ $all_itv_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_itv_date) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_itv_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6">
        <div  id="alert7" class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-users"></i>
                </div>
                <p class="card-category">Gestion des Formateurs</p>
                <a href="/all-form">
                    <h3 class="card-title">
                        {{ $all_form_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_form_date) == null)
                        Aucune information n'a été trouvé
                    @else
                    {{ $all_form_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6">
        <div  id="alert8" class="card card-stats">
            <div class="card-header card-header-success card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-graduation-cap"></i>
                </div>
                <p class="card-category">Gestion des Formations</p>
                <a href="/all-formt">
                    <h3 class="card-title">
                        {{ $all_formt_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_formt_date) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_formt_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6">
        <div   id="alert9" class="card card-stats">
            <div class="card-header card-header-warning card-header-icon">
                <div class="card-icon">
                    <i class="fa fa-calendar"></i>
                </div>
                <p class="card-category">Gestion des évenements</p>
                <a href="/even">
                    <h3 class="card-title">
                        {{ $all_even_count }}
                    </h3>
                </a>

            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_even_date) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_even_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row" >
    <div  class="col-lg-3 col-md-6 col-sm-6">
        <div id="alert10" class="card card-stats">
            <div class="card-header card-header-warning card-header-icon">
                <div class="card-icon" href="/all-admin">
                    <i class="fa fa-book"></i>
                </div>
                <p class="card-category">Gestion de la documentation</p>
                <h3 class="card-title">
                    {{ $all_admin_count }}
                </h3>
            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="material-icons">date_range</i>Dernier Ajout le :
                    @if(($all_admin_date) == null)
                    Aucune information n'a été trouvé
                    @else
                    {{ $all_admin_date->created_at }}
                    @endif
                </div>
            </div>
        </div>
    </div>

</div>

</div>


@endsection