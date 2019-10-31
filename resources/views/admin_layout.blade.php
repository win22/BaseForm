
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        BaseForm | admin
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="{{asset('backend/css/material-dashboard.css?v=2.1.1')}}" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="{{asset('backend/demo/demo.css')}}" rel="stylesheet" />
</head>

<body class="">
<div class="wrapper">
    <div class="sidebar" data-color="purple" data-background-color="" data-image="{{ URL::to('backend/img/blur.jpg')}}">
        <!--
          Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

          Tip 2: you can also add an image using data-image tag
      -->
        <div class="logo">
            <img src="{{ URL::to('backend/img/Logo-MASE-SNEGAL-sn.png') }}" style="width: 120px; padding-left: 25px">
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li class="nav-item {{ request()->is('dashboard','/detail-eu/{eu_id}')? 'active' : '' }}">
                    <a class="nav-link" href="{{URL::to('/dashboard')}}">
                        <i class="material-icons EI">dashboard</i>
                        <p>Tableau de bord</p>
                    </a>
                </li>

                <li class="nav-item {{ request()->is('all-admin','add-admin')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-admin','add-admin')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <i class="material-icons of">supervised_user_circle</i>
                        <p class="menu-title">Utilisateurs</p>
                    </a>
                    <div class="collapse {{ request()->is('all-admin','add-admin')? 'show' : '' }}" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-admin')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-admin')}}">
                                    <i class="material-icons ">view_list</i>
                                    <span class="text-white">Listes des utilisateurs</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-admin')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-admin')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter un utilisateur</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-of','add-of')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-of','add-of')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic2">
                        <i class="material-icons userI">bubble_chart</i>
                        <p class="menu-title">Organismes de Formation</p>
                    </a>
                    <div class="collapse {{ request()->is('all-of','add-of')? 'show' : '' }}" id="ui-basic2">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-of')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-of')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des OF</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-of')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-of')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter un OF</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-eu','add-eu')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-eu','add-eu')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic3">
                        <i class="fa fa-industry EU"></i>
                        <p class="menu-title">Entrprises Utilisatrices</p>
                    </a>
                    <div class="collapse {{ request()->is('all-eu','add-eu')? 'show' : '' }}" id="ui-basic3">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-eu')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-eu')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des E.U</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-eu')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-eu')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter une E.U</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-ei','add-ei')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-ei','add-ei')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic4" aria-expanded="false" aria-controls="ui-basic3">
                        <i class="fa fa-crop EI"></i>
                        <p class="menu-title">Entrprises Intervenantes</p>
                    </a>
                    <div class="collapse {{ request()->is('all-ei','add-ei')? 'show' : '' }}" id="ui-basic4">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-ei')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-ei')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des E.I</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-ei')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-ei')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter une E.I</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-itv','add-itv')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-itv','add-itv')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic5" aria-expanded="false" aria-controls="ui-basic5">
                        <i class="fa fa-user userI"></i>
                        <p class="menu-title">Intervenants</p>
                    </a>
                    <div class="collapse {{ request()->is('all-itv','add-itv')? 'show' : '' }}" id="ui-basic5">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-itv')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-itv')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des intervenants</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-itv')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-itv')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter un intervenant</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-form','add-form')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-form','add-form')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic6" aria-expanded="false" aria-controls="ui-basic6">
                        <i class="fa fa-users EU"></i>
                        <p class="menu-title">Formateurs</p>
                    </a>
                    <div class="collapse {{ request()->is('all-form','add-form')? 'show' : '' }}" id="ui-basic6">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-form')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-form')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des Formateurs</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-form')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-form')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter un Formateur</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-formt','add-formt')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-formt','add-formt')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic7" aria-expanded="false" aria-controls="ui-basic7">
                        <i class="fa fa-graduation-cap of"></i>
                        <p class="menu-title">Formations</p>
                    </a>
                    <div class="collapse {{ request()->is('all-formt','add-formt')? 'show' : '' }}" id="ui-basic7">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-formt')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-formt')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des formations</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-formt')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-formt')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter une formation</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-even','add-even')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-even','add-even')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic8" aria-expanded="false" aria-controls="ui-basic8">
                        <i class="fa fa-calendar-o userI"></i>
                        <p class="menu-title">Évenements</p>
                    </a>
                    <div class="collapse {{ request()->is('all-even','add-even')? 'show' : '' }}" id="ui-basic8">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-even')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-even')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des évenements</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-even')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-even')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter un  évenement</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item {{ request()->is('all-doc','add-doc')? 'active' : '' }}">
                    <a class="nav-link {{ request()->is('all-doc','add-doc')? 'collapsed' : '' }}" data-toggle="collapse" href="#ui-basic9" aria-expanded="false" aria-controls="ui-basic9">
                        <i class="fa fa-book EI"></i>
                        <p class="menu-title">Documentations</p>
                    </a>
                    <div class="collapse {{ request()->is('all-doc','add-doc')? 'show' : '' }}" id="ui-basic9">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item {{ request()->is('all-doc')? 'active' : '' }} ">
                                <a class="nav-link" href="{{URL::to('/all-doc')}}">
                                    <i class="material-icons">view_list</i>
                                    <span class="text-white">Listes des documents</span>
                                </a>
                            </li>
                            <li class="nav-item {{ request()->is('add-doc')? 'active' : '' }}">
                                <a class="nav-link" href="{{URL::to('/add-doc')}}">
                                    <i class="material-icons">playlist_add</i>
                                    <span class="text-white">Ajouter un document</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
            <div class="container-fluid">

                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end">

                    <ul class="navbar-nav">
                        <li>
                            <a class="navbar-brand" href="#pablo"> Nom de la structure :
                                <strong style="font-family: 'Manjari'" class="text-danger">  {{  Session::get('admin_structure') }} </strong>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                <i class="material-icons of">person</i>

                                <p class="d-lg-none d-md-block">
                                    Account
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                                <a class="dropdown-item"  href="{{ URL::to('/edit-admin-profil/'.
                                      Session::get('admin_id'))}}">
                                    Profil de  {{ Session::get('admin_structure') }}</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/logout">Se déconnecter</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- End Navbar -->
        <div class="content">

            <div class="container-fluid">
                @yield('contenu')
            </div>

        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="float-left">
                    <ul>
                        <li>
                            <a  target="_blank" href="https://www.mase-senegal.com/">
                             MASE-Sénégal |   <span class="text-success">Ameliorer la performance SSE</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="float-right">
                    <ul>
                        <li>

                            <a href="http://nataalagency.com" target="_blank"> &copy;
                                <script>
                                    document.write(new Date().getFullYear())
                                </script> by | <strong class="text-danger">Nataal Agency</strong> </a>.
                        </li>
                    </ul>

                </div>
            </div>
        </footer>
    </div>

</div>

<!--   Core JS Files   -->
<script src="{{asset('backend/js/core/jquery.min.js')}}"></script>
<script src="{{asset('backend/js/core/popper.min.js')}}"></script>
<script src="{{asset('backend/js/core/bootstrap-material-design.min.js')}}"></script>
<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- Plugin for the momentJs  -->
<script src="{{asset('backend/js/plugins/moment.min.js')}}"></script>
<!--  Plugin for Sweet Alert -->
<script src="{{asset('backend/js/plugins/sweetalert2.js')}}"></script>
<!-- Forms Validations Plugin -->
<script src="{{asset('backend/js/plugins/jquery.validate.min.js')}}"></script>
<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="{{asset('backend/js/plugins/jquery.bootstrap-wizard.js')}}"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="{{asset('backend/js/plugins/bootstrap-selectpicker.js')}}"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="{{asset('backend/js/plugins/bootstrap-datetimepicker.min.js')}}"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
<script src="{{asset('backend/js/plugins/jquery.dataTables.min.js')}}"></script>
<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="{{asset('backend/js/plugins/bootstrap-tagsinput.js')}}"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="{{asset('backend/js/plugins/jasny-bootstrap.min.js')}}"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="{{asset('backend/js/plugins/fullcalendar.min.js')}}"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="{{asset('backend/js/plugins/jquery-jvectormap.js')}}"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="{{asset('backend/js/plugins/nouislider.min.js')}}"></script>
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script src="{{asset('backend/js/plugins/arrive.min.js')}}"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chartist JS -->
<script src="{{asset('backend/js/plugins/chartist.min.js')}}"></script>
<!--  Notifications Plugin    -->
<script src="{{asset('backend/js/plugins/bootstrap-notify.js')}}"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="{{asset('backend/js/material-dashboard.js?v=2.1.1')}}" type="text/javascript"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="{{asset('backend/demo/demo.js')}}"></script>


<script>
    $(document).ready(function() {
        $().ready(function() {
            $sidebar = $('.sidebar');

            $sidebar_img_container = $sidebar.find('.sidebar-background');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

            if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
                if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                    $('.fixed-plugin .dropdown').addClass('open');
                }

            }

            $('.fixed-plugin a').click(function(event) {
                // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                if ($(this).hasClass('switch-trigger')) {
                    if (event.stopPropagation) {
                        event.stopPropagation();
                    } else if (window.event) {
                        window.event.cancelBubble = true;
                    }
                }
            });

            $('.fixed-plugin .active-color span').click(function() {
                $full_page_background = $('.full-page-background');

                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-color', new_color);
                }

                if ($full_page.length != 0) {
                    $full_page.attr('filter-color', new_color);
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.attr('data-color', new_color);
                }
            });

            $('.fixed-plugin .background-color .badge').click(function() {
                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('background-color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-background-color', new_color);
                }
            });

            $('.fixed-plugin .img-holder').click(function() {
                $full_page_background = $('.full-page-background');

                $(this).parent('li').siblings().removeClass('active');
                $(this).parent('li').addClass('active');


                var new_image = $(this).find("img").attr('src');

                if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    $sidebar_img_container.fadeOut('fast', function() {
                        $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                        $sidebar_img_container.fadeIn('fast');
                    });
                }

                if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $full_page_background.fadeOut('fast', function() {
                        $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                        $full_page_background.fadeIn('fast');
                    });
                }

                if ($('.switch-sidebar-image input:checked').length == 0) {
                    var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                }
            });

            $('.switch-sidebar-image input').change(function() {
                $full_page_background = $('.full-page-background');

                $input = $(this);

                if ($input.is(':checked')) {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar_img_container.fadeIn('fast');
                        $sidebar.attr('data-image', '#');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page_background.fadeIn('fast');
                        $full_page.attr('data-image', '#');
                    }

                    background_image = true;
                } else {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar.removeAttr('data-image');
                        $sidebar_img_container.fadeOut('fast');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page.removeAttr('data-image', '#');
                        $full_page_background.fadeOut('fast');
                    }

                    background_image = false;
                }
            });

            $('.switch-sidebar-mini input').change(function() {
                $body = $('body');

                $input = $(this);

                if (md.misc.sidebar_mini_active == true) {
                    $('body').removeClass('sidebar-mini');
                    md.misc.sidebar_mini_active = false;

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                } else {

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                    setTimeout(function() {
                        $('body').addClass('sidebar-mini');

                        md.misc.sidebar_mini_active = true;
                    }, 300);
                }

                // we simulate the window Resize so the charts will get updated in realtime.
                var simulateWindowResize = setInterval(function() {
                    window.dispatchEvent(new Event('resize'));
                }, 180);

                // we stop the simulation of Window Resize after the animations are completed
                setTimeout(function() {
                    clearInterval(simulateWindowResize);
                }, 1000);

            });
        });
    });
</script>
<script>
    $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        md.initDashboardPageCharts();

    });
</script>

<script>
    jQuery(function ($) {
        var alert = $('#alert');
        if(alert.length > 0){
            alert.hide().slideDown(730).delay(2200).fadeOut(500);

        }
    })
</script>

<script>
    jQuery(function ($) {
        var alert = $('#alert2');
        if(alert.length > 0){
            alert.hide().slideDown(730);

        }
    })
</script>

<script>
    jQuery(function ($) {
        var alert = $('#alert3');
        if(alert.length > 0){
            alert.hide().delay(900).slideDown(760);

        }
    })
</script>
<script>
    jQuery(function ($) {
        var alert = $('#alert4');
        if(alert.length > 0){
            alert.hide().delay(1500).slideDown(760);

        }
    })
</script>
<script>
    jQuery(function ($) {
        var alert = $('#alert5');
        if(alert.length > 0){
            alert.hide().delay(2400).slideDown(760);

        }
    })
</script>
<script>
    jQuery(function ($) {
        var alert = $('#alert6');
        if(alert.length > 0){
            alert.hide().delay(3200).slideDown(760);

        }
    })
</script>
<script>
    jQuery(function ($) {
        var alert = $('#alert7');
        if(alert.length > 0){
            alert.hide().delay(4100).slideDown(760);

        }
    })
</script>
<script>
    jQuery(function ($) {
        var alert = $('#alert8');
        if(alert.length > 0){
            alert.hide().delay(5000).slideDown(760);

        }
    })
</script>
<script>
    jQuery(function ($) {
        var alert = $('#alert9');
        if(alert.length > 0){
            alert.hide().delay(5900).slideDown(760);

        }
    })
</script>
<script>
    jQuery(function ($) {
        var alert = $('#alert10');
        if(alert.length > 0){
            alert.hide().delay(6800).slideDown(760);

        }
    })
</script>
<script type="text/javascript" src="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js')}}"></script>

<script>
    $(document).on("click", "#delete",function (e) {
        e.preventDefault();
        var link = $(this).attr("href");
        bootbox.confirm("Voulez-vous poursuivre cette action?", function (confirmed) {
            if (confirmed) {
                window.location.href = link;
            };
        });
    });
</script>

<script type="text/javascript">
    $(document).ready(function() {
        $(document).on('change', '#admin_structure', function() {
            var air_id =  $('#admin_structure').val();     // get id the value from the select
            $('#admin_email').val(air_id);   // set the textbox value

            // if you want the selected text instead of the value
            // var air_text = $('.aircraftsName option:selected').text();
        });
    });
</script>
</body>

</html>