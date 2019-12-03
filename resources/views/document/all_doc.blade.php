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
                <p class="card-form">Liste des documents</p>

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
                    <thead class="text-center text-danger">

                    <th>Nom du  Document</th>
                    <th>Contenu du document</th>
                    <th>Fichier </th>
                    @if( Session::get('admin_role')==1)
                    <th>Date de création</th>
                    @endif
                    <th>Action</th>


                    </thead>


                    <tbody class="text-center">
                    @foreach ( $all_doc_info as $v_doc)
                    <tr>
                        <td style="font-family: 'Manjari Bold'">{{ $v_doc->doc_name }}</td>
                        <td class="ellipsis">{{ $v_doc->doc_contenu }}</td>
                        <td>{{ $v_doc->doc_file }}</td>
                        @if( Session::get('admin_role')==1)
                        <td>{{ $v_doc->created_at }}</td>
                        @endif
                        <td class="td-actions">
                            <a class="btn btn-info btn-link btn-sm"  rel="tooltip" title="visualiser"  href="{{ URL::to('/details-doc/'.
                          $v_doc->doc_id)}}">
                                <i class="material-icons">visibility</i>
                            </a>
                            @if( Session::get('admin_role')==1)
                            <a class="btn btn-warning btn-link btn-sm"  rel="tooltip" title="Modifier"  href="{{ URL::to('/edit-doc/'.
                                 $v_doc->doc_id)}}">
                                <i class="material-icons">edit</i>
                            </a>
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

                <p  id="total_records">
                    @if($nb>0)
                    Total des informations : <span id="total_records">{{ $nb }}</span>
                </p>
                @else
                <p class="text-center">Aucune information trouvé</p>
                @endif

                {{ $all_doc_info->links() }}
            </div>
        </div>
    </div>

</div>



@endsection