# Use a imagem oficial do n8n
FROM docker.n8n.io/n8nio/n8n

# Defina variáveis de ambiente para o banco de dados PostgreSQL
ENV DB_TYPE=postgresdb \
    DB_POSTGRESDB_DATABASE=${POSTGRES_DATABASE} \
    DB_POSTGRESDB_HOST=${POSTGRES_HOST} \
    DB_POSTGRESDB_PORT=${POSTGRES_PORT} \
    DB_POSTGRESDB_USER=${POSTGRES_USER} \
    DB_POSTGRESDB_SCHEMA=${POSTGRES_SCHEMA} \
    DB_POSTGRESDB_PASSWORD=${POSTGRES_PASSWORD}

# Expor a porta para que o n8n possa ser acessado
EXPOSE 5678

# Crie um volume para armazenar os dados persistentes do n8n
VOLUME ["/home/node/.n8n"]
