<!DOCTYPE html>
<html lang="fr">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Connexion</title>
    <link href="{{asset('backend/css/style.css')}}" rel="stylesheet">
    <link rel="shortcut icon" href="{{ URL::to('backend/img/Logo-MASE-SNEGAL-sn.png') }}" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
</head>
<body>

<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
            <div class="row w-100">
                <div class="col-lg-5 mx-auto">
                    <div class="auto-form-wrapper">
                        <h3 class="text-center"><span class="text-primary">BaseForm</span>| Rénitialisation </h3>
                        <form action="/user/reset/email" method="post">
                            @csrf
                            <div class="form-group">
                                <label class="label">Adresse e-mail</label>
                                <div class="input-group">
                                    <input type="email" name="admin_email" value="{{ old('$admin_email') }}" class="form-control" placeholder="Veuillez saisir votre adresse e-mail">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                           <i class="material-icons">mail</i>
                                        </span>
                                    </div>
                                </div>
                                @if($errors->has('admin_email'))
                                <small id="emailHelp" class="form-text text-danger">{{$errors->first('admin_email')}}</small>
                                @endif
                                <p hidden class="alert">{{ $message = Session::get('message')}}</p>
                                <p hidden class="alert">{{ $succes = Session::get('succes')}}</p>
                                @if($message)
                                <small class="form-text text-danger">{{ $message}}</small>
                                {{ Session::put('message',NULL) }}
                                @endif
                                @if($succes)
                                <small class="form-text text-success">{{ $succes}}</small>
                                {{ Session::put('succes',NULL) }}
                                @endif
                            </div>

                            <div class="form-group">

                                <button class="btn btn-primary submit-btn btn-block">
                                    <i class="material-icons mr-6">send</i>
                                    Envoyer

                                </button>
                            </div>
                            <div class="text-block text-center my-3">

                                <a href="/" class="text-danger text-small">Annuler</a>
                            </div>
                            <div class="text-block text-center my-3">

                            </div>
                            <div class="form-group">

                            </div>


                        </form>
                    </div>
                    <ul class="auth-footer">
                    </ul>
                    <p  class="footer-text text-center">&copy; 2019 | design by <a  target="_blank" href="http://nataalagency.com/">Nataal Agency</a>. Tous les droits sont réservés.</p>
                </div>
            </div>
        </div>

    </div>

</div>


</body>
</html>



