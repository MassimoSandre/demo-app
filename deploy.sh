#!/bin/bash
cd /home/massimo/apps/demo-app || exit

newgrp docker

# Aggiorna il codice
git fetch origin main
git reset --hard origin/main

# Costruisci la nuova immagine Docker
docker build -t demo-app .

# Ferma e rimuovi il vecchio container
docker stop demo-app || true
docker rm demo-app || true

# Avvia il container aggiornato
docker run -d --name demo-app -p 8080:80 demo-app
