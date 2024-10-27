#!/bin/bash

# Remove versões antigas do Docker, caso existam
sudo apt-get remove -y docker docker-engine docker.io containerd runc

# Atualize os pacotes
sudo apt-get update

# Instale pacotes necessários para permitir o uso de repositórios via HTTPS
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# Adicione a chave GPG oficial do Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Configure o repositório estável do Docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Atualize os pacotes novamente
sudo apt-get update

# Instale o Docker e suas dependências
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Adicione o usuário atual ao grupo 'docker' para evitar usar 'sudo' em todos os comandos Docker
sudo usermod -aG docker $USER

# Instale o Docker Compose
sudo apt-get install -y docker-compose-plugin

# Execute o Docker Compose
sudo docker compose up -d
