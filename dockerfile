# recuperer l'image node correspondantes à la bonne version de node
FROM node:20.12.0

# creer et definir le dossier de l'application
WORKDIR /app

# exporter les variable d'env  de l'app (sera mis dans les var de l'host plus-tard)
ENV HOST=0.0.0.0 PORT=8081

# exposer le port
EXPOSE ${PORT}

# copier les fichiers packages dans le dossier app
COPY package*.json /app/

# installer les dependances
RUN npm install

# copier tous les fichiers du dossier courant dans le conteneur
COPY . /app

# lancer l'app
ENTRYPOINT ["npm", "start"]