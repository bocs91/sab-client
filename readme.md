npm i pour les dépendances

npm start pour lancer le serveur

version node v20.10.0

npm version 10.2.3


# Docker
## Local
Pour builder l'image docker en local, lance la commande ci-après depuis le repertoire de l'application.

`docker build -t sab-client:1.0 .`

Pour executer le conteneur sans lancer de shell (sinon retirer le -d)

`docker container run -p 8081:8081 -d --name NOM_CONTENEUR_CLIENT sab-client:1.0`

Lancer un shell dans le conteneur,  /!\ remplacer la variable NOM_CONTENEUR par le nom choisi

`docker container exec -ti NOM_CONTENEUR_CLIENT bash`