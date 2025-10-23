# Dockerfile pour le front-end (multi-stage: build avec Node, servir avec Nginx)
# Placez ce fichier à la racine du projet front (là où se trouvent package.json et le dossier src)

# --- Build stage ---
FROM node:18-alpine AS build

# Variables (modifiez si nécessaire)
ARG NODE_ENV=production
ARG BUILD_CMD=build

ENV NODE_ENV=${NODE_ENV}
WORKDIR /app

# Copier les fichiers de dépendances d'abord pour profiter du cache Docker
COPY package*.json ./
# si vous utilisez yarn, adaptez la ligne suivante (COPY yarn.lock ./)
RUN npm ci --silent

# Copier le reste des fichiers et construire
COPY . .
RUN npm run ${BUILD_CMD} --silent

# --- Serve stage ---
FROM nginx:stable-alpine

# Supprimer configuration par défaut et ajouter une config adaptée aux SPA
RUN rm /etc/nginx/conf.d/default.conf
RUN mkdir -p /usr/share/nginx/html

# Créer une configuration nginx simple avec fallback pour SPA
RUN printf '%s\n' \
'server {' \
'  listen 80;' \
'  server_name _;' \
'  root /usr/share/nginx/html;' \
'  index index.html;' \
'  location / {' \
'    try_files $uri $uri/ /index.html;' \
'  }' \
'  location ~* \.(?:manifest|appcache|html?|xml|json)$ {' \
'    add_header Cache-Control "no-store, no-cache, must-revalidate, proxy-revalidate, max-age=0";' \
'  }' \
'  location ~* \.(?:css|js|jpg|jpeg|png|gif|ico|svg|ttf|woff|woff2)$ {' \
'    try_files $uri =404;' \
'    expires 30d;' \
'    add_header Cache-Control "public, immutable";' \
'  }' \
'}' > /etc/nginx/conf.d/default.conf

# Copier les fichiers construits depuis l'étape build
COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]