
<div class="container">

    <img src="{{ asset('backend/img/Logo-MASE-SNEGAL-sn.png') }}">
    <h3 style="color: #00eade">Bonjour </h3>
    <p> Nous avons reçu une demande de reinitialisation de mot de passe <br>  d’un compte BaseForm de Mase sénégal  associé à votre adresse email.<br/>
    </p>
    <p>Votre compte est actuellement désactivé, nous vous prions de cliquer <br>
        sur ce lien afin de modifier votre mot de passe et de reactiver votre compte :<br>
     {{ url('user/reset', $token) }}<br>
        <br>
    Si toute fois cette vous n'etes pas l'auteur de cette action <br>
        nous vous prions de  contacter l'administrateur de BaseForm
</p>
    <h4 style="color: #00362d">Merci<br>
        L'équipe de Gestion des comptes de Mase-Sénégal.
    </h4>

</div>