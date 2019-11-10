
<h2 style="color: #0b85ea">Bienvenue  {{ $admin_prenom }}</h2>
<p>Votre compte a été creer avec succès ! </p>
<p>veuillez cliquer sur ce lien afin de modifier votre mot de passe <br>
    et d'activer votre compte :<br>
     {{ url('user/activation', $token) }}</p>
