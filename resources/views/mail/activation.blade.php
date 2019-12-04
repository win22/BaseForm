
<div class="container">

    <img src="{{ asset('backend/img/Logo-MASE-SNEGAL-sn.png') }}">
<h3 style="color: #00eade">Bonjour  {{ $admin_structure }}</h3>
<p> Nous avons crée un compte  associé à votre adresse email <br/>
    afin de vous permettre de vous connectez à l'application <a href="http://localhost:8000/admin">BaseForm</a>
    de  <a class="text-success" href="https://www.mase-senegal.com/">Mase-Sénégal</a> <br/>
</p>
<p>Nous vous prions de cliquer sur ce lien afin de confirmer  votre compte:<br>
     {{ url('user/activation', $token) }}</p>

<h4 style="color: #00362d">Merci<br>
   L'équipe de Gestion des comptes de Mase-Sénégal.
</h4>
</div>