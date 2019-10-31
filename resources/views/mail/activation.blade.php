
<h2 style="color: #0b85ea">Bienvenue  {{ $data['admin_prenom'] }}</h2>
<p>Votre compte a été creer avec succès ! </p>
<p>Voici vos parametres de connexion</p>
<p> <span style="color: red">Adresse e-mail :</span>  {{ $data['admin_email'] }}</p>
<p><span style="color: red">Mot de passe :</span>  {{ $pass['test'] }} </p>
<p>veuillez cliquer sur ce lien afin d' activer votre compte :: {{ url('user/activation', $data['token']) }}</p>
<h4 style="color: #0d704d">Merci !!</h4>
