# Image Python légère
FROM python:3.12-slim

# Créer un dossier de travail
WORKDIR /app

# Installer les dépendances système
RUN apt-get update && apt-get install -y build-essential default-libmysqlclient-dev && rm -rf /var/lib/apt/lists/*

# Copier le fichier requirements
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code backend
COPY . .

# Exposer le port du serveur
EXPOSE 8000

# Lancer le serveur FastAPI
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

