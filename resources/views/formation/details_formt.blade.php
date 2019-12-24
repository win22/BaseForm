@extends('admin_layout')
@section('contenu')

<div class="row">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header card-header-info">
                <h4 class="card-title">Formation  <i class="fa fa-graduation-cap"></i> </i></h4>
                <p class="card-category">Afficher les détails de la formation</p>
            </div>
            <div class="card-body">
               <div class="row">
                   <div class="col-md-8">
                       <div class="row">
                           <div class="col-md-4">
                               <p class="card-title">
                               <li class="fa fa-graduation-cap" style="color: #036b75!important;"></li>&nbsp;
                               Nom :
                               </p>
                           </div>
                           <div class="col-md-8">
                               <p class="card-title">
                                   <span style="font-family: 'Manjari Bold'"> {{ $formt_info->formt_name }}</span>
                               </p>
                           </div>
                       </div>
                       @if($formt_info->formt_structure)
                       <div class="row">
                           <div class="col-md-4">
                               <p class="card-title">
                                   <i style="color: #036b75!important;" class="fa fa-industry" aria-hidden="true"></i>
                               Nom de l'entreprise :
                               </p>
                           </div>
                           <div class="col-md-7">
                               <p class="card-title">
                                   <span class="text-warning" " style="font-family: 'Manjari Bold'"> {{ $formt_info->formt_structure }}</span>
                               </p>
                           </div>
                       </div>
                       @endif
                       <div class="row">
                           <div class="col-md-4">
                               <p class="card-title">
                               <li class="fa fa-clock-o" style="color: #036b75!important;"></li>&nbsp;
                               Durée de la formation  :
                               </p>
                           </div>
                           <div class="col-md-8">
                               <p class="card-title">
                                   <span style="font-family: 'Manjari Bold'"> {{ $formt_info->formt_time }}</span>
                               </p>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-md-4">
                               <p class="card-title">
                               <li class="fa fa-certificate" style="color: #036b75!important;"></li>&nbsp;
                               Type de formation:
                               </p>
                           </div>

                           <div class="col-md-5">
                               @if(($formt_info->formt_type == 'agrée' ))
                               <p class="card-title">
                                   <span class="text-success" style="font-family: 'Manjari Bold'">Certifié Mase</span>
                               </p>
                               @else
                               <p class="card-title">
                                   <span class="text-danger" style="font-family: 'Manjari Bold'">Non certifié </span>
                               </p>
                               @endif
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-md-4">
                               <p class="card-title">
                               <li class="fa fa-bookmark" style="color: #036b75!important;"></li>&nbsp;
                               Description du Contenu :
                               </p>
                           </div>
                           <div class="col-md-8">
                               <p class="text-justify card-title">
                                   <span style="font-family: 'Manjari Bold'"> {{ $formt_info->formt_contenu }}</span>
                               </p>
                           </div>
                       </div>
                       @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                       <div class="row">
                           <div class="col-md-4">
                               <p class="card-title">
                               <li class="fa fa-calendar" style="color: #036b75!important;"></li>&nbsp;
                               Date de création :
                               </p>
                           </div>
                           <div class="col-md-8">
                               <p class="card-title">
                                   <span style="font-family: 'Manjari Bold'"> {{ $formt_info->created_at }}</span>
                               </p>
                           </div>
                       </div>
                       @endif
                       <div class="row">
                           <div class="col-md-4">
                               <p class="card-title">
                               <li class="fa fa-eye" style="color: #036b75!important;"></li>&nbsp;
                               <a href="/formation/{{$formt_info->formt_file}}" download="{{$formt_info->formt_file}}">
                                   Voir le document
                               </a>

                               </p>
                           </div>
                           <div class="col-md-5">
                               <p class="card-title">
                                   <span style="font-family: 'Manjari Bold'"> {{ $formt_info->formt_file }}</span>
                               </p>
                           </div>
                       </div>
                   </div>
                   @if($formt_info->formt_type == 'agrée')
                   <div class="col-md-3" style="padding-top: 140px; padding-right: 200px">
                       <div class="col-md-6">
                           <img class="img" style=" width: 236px; height : 216px; " src="{{URL::to('image/cer.png')}}" />
                       </div>
                   </div>
                   @endif

               </div>


                @if(Session::get('admin_role') == 1 || Session::get('admin_role') == 2)
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ URL::to('/edit-formt/'.
                        $formt_info->formt_id)}}"  id="md." class="btn btn-warning pull-right">
                            <i class="material-icons">edit</i>&nbsp;
                            Modifier
                        </a>&nbsp;
                    </div>

                </div>
                @endif
            </div>
        </div>

    </div>

</div>

@endsection