<!DOCTYPE html>
<html lang="fr">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BaseForm | connexion</title>
    <link href="{{asset('backend/css/style.css')}}" rel="stylesheet">
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
                        <h3 class="text-center"><span class="text-success">BaseFom</span> | Login</h3>
                        <form action="/admin_login" method="post">
                            @csrf
                            <div class="form-group">
                                <label class="label">Email</label>
                                <div class="input-group">
                                    <input type="email" name="admin_email" class="form-control" placeholder="Saisir votre adresse email">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                           <i class="material-icons">person</i>
                                        </span>
                                    </div>
                                </div>
                                @if($errors->has('admin_email'))
                                <small id="emailHelp" class="form-text text-danger">{{$errors->first('admin_email')}}</small>
                                @endif
                                <p hidden class="alert">{{ $message = Session::get('message')}}</p>
                                @if($message)
                                <small class="form-text text-danger">{{ $message}}</small>
                                {{ Session::put('message',NULL) }}
                                @endif
                            </div>

                            <div class="form-group">
                                <label class="label">Password</label>
                                <div class="input-group">
                                    <input type="password" name="admin_password" class="form-control" placeholder="*********">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="material-icons">lock</i>
                                        </span>
                                    </div>
                                </div>
                                @if($errors->has('admin_password'))
                                <small id="emailHelp" class="form-text text-danger">{{$errors->first('admin_password')}}</small>
                                @endif
                            </div>

                            <div class="form-group">

                                <button class="btn btn-success submit-btn btn-block">
                                    <i class="material-icons mr-6">send</i>
                                    Se connecter

                                </button>
                            </div>
                            <div class="text-block text-center my-3">

                    </div>
                    <div class="form-group">

                    </div>


                    </form>
                </div>
                <ul class="auth-footer">
                </ul>
                <p class="footer-text text-center">design by Nataal Agency. Tous les droits sont réservés.</p>
            </div>
        </div>
    </div>

</div>

</div>


</body>
</html>



