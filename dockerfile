FROM node:latest

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier uniquement package.json et package-lock.json pour optimiser le cache
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code de l'application
COPY . .

# Exposer le port sur lequel l'application tourne
EXPOSE 8080

# Définir la commande de démarrage
CMD ["npm", "strat"]
