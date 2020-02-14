Pour installer le projet. Vous pouvez suivrir des étapes ensuite

1. Installation un server local comme XAMPP ou WAMP

2. Déchiffirer le fichier compressé api.rar(dans racine) dans le dossier htdocs pour XAMPP ou le dossier www pour WAMP
.Parce que api ou on stocke des images dans le server quand le client télécharge un image et l'envoyer au serveur

3. Installation des databases
Nommer et creer une database sur phpmyadmin de server local
Optionnel: on peut créer un compte pour accéder la database
Comme moi, je mets en défault(user:root,password:'',database:comme j'ai nommé)
Ensuite, vous les configuez dans le fichier server.js(dans racine)
Puis, importer le fichier dev-restodujour(dans racine) dans la database que vous avez créé avant

4. Installation un simulateur de smartphone(moi, j'installe le simulateur dans android studio)
ou vous pouvez install une application Expo(disponile sur android et IOS) sur votre téléphone portable pour connecter et lancer le projet par
le scannaire QR

5.Installation des modules de nodeJs

Dans le racine: npm install
Lancer application: npm start

Ensuite connextion avec le simulateur--->on tape: ?a
Si vous ne voulez pas connecter avec le simulateur mais avec le smartphone
Ouvrez l'application Expo et scannez le code QR mais faites attention que votre ordinateur et votre télephone doivent connecter le même réseaux

Lancer le server: dans un autre terminal lancer la commande: nodemon server.js

6. Changer IP de votre ordinateur dans fichier apiurl.js(dans le racine du projet) parce votre ip change quand vous connectez des réseaux différent
