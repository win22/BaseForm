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
                <h4 class="card-title">Documents   <i class="fa fa-calendar"></i></h4>
                <p class="card-form">les differents Documents de votre base de données</p>

            </div>

            <div class="col-md-4">
                <form class="navbar-form" action="/searchDoc">
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

                    <th>Nom du  Document</th>
                    <th>Contenu du document</th>
                    <th>Date de création</th>
                    <th>Action</th>


                    </thead>


                    <tbody>
                    @foreach ( $all_doc_info as $v_doc)
                    <tr>
                        <td class="center">{{ $v_doc->doc_name }}</td>
                        <td aria-valuemax="10" class="center">{{ $v_doc->doc_contenu }}</td>
                        <td  class="center">{{ $v_doc->created_at }}</td>
                        <td>
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-doc/'.
                                 $v_doc->doc_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            <a class="btn btn-danger btn-link btn-sm"  rel="tooltip" title="Supprimer" href="{{ URL::to('/delete-doc/'.
                                 $v_doc->doc_id)}}" id="delete">
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

                {{ $all_doc_info->links() }}
            </div>
        </div>
    </div>

</div>



@endsection