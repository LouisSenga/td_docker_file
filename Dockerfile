# Utiliser l'image de base officielle de Node.js
FROM node:20-alpine AS builder

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le package.json et le package-lock.json pour installer les dépendances
COPY package.json package-lock.json ./

# Installer les dépendances
RUN npm install

# Copier tous les fichiers de l'application dans le conteneur
COPY . .

# Construire l'application Next.js
RUN npm run build

# Étape de production
FROM node:20-alpine AS production

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les dépendances uniquement pour la production
COPY package.json package-lock.json ./

# Installer les dépendances nécessaires pour exécuter l'application
RUN npm install --production

# Copier le dossier build généré par Next.js
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
COPY --from=builder /app/next.config.mjs ./

# Exposer le port sur lequel l'application tournera
EXPOSE 3000

# Démarrer l'application
CMD ["npm", "start"]
