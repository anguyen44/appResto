Pour installer le projet. Vous pouvez suivrir des �tapes ensuite

1. Installation un server local comme XAMPP ou WAMP

2. D�chiffirer le fichier compress� api.rar(dans racine) dans le dossier htdocs pour XAMPP ou le dossier www pour WAMP
.Parce que api ou on stocke des images dans le server quand le client t�l�charge un image et l'envoyer au serveur

3. Installation des databases
Nommer et creer une database sur phpmyadmin de server local
Optionnel: on peut cr�er un compte pour acc�der la database
Comme moi, je mets en d�fault(user:root,password:'',database:comme j'ai nomm�)
Ensuite, vous les configuez dans le fichier server.js(dans racine)
Puis, importer le fichier dev-restodujour(dans racine) dans la database que vous avez cr�� avant

4. Installation un simulateur de smartphone(moi, j'installe le simulateur dans android studio)
ou vous pouvez install une application Expo(disponile sur android et IOS) sur votre t�l�phone portable pour connecter et lancer le projet par
le scannaire QR

5.Installation des modules de nodeJs

Dans le racine: npm install
Lancer application: npm start

Ensuite connextion avec le simulateur--->on tape: ?a
Si vous ne voulez pas connecter avec le simulateur mais avec le smartphone
Ouvrez l'application Expo et scannez le code QR mais faites attention que votre ordinateur et votre t�lephone doivent connecter le m�me r�seaux

Lancer le server: dans un autre terminal lancer la commande: nodemon server.js