# Use a imagem oficial do n8n
FROM docker.n8n.io/n8nio/n8n

# Defina variáveis de ambiente para o banco de dados PostgreSQL
ENV DB_TYPE=postgresdb \
    DB_POSTGRESDB_DATABASE="n8n_xx29" \
    DB_POSTGRESDB_HOST="dpg-cseq9n8gph6c73espvog-a.oregon-postgres.render.com" \
    DB_POSTGRESDB_PORT="5432" \
    DB_POSTGRESDB_USER="n8n_user"\
    DB_POSTGRESDB_SCHEMA="public"\
    DB_POSTGRESDB_PASSWORD="xbC25KQIgUawyfqOvyMmOpViYh6jTDzK"\
    DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED="false" \
    DB_POSTGRESDB_SSL_ENABLED="true"\
    WEBHOOK_URL="https://n8n-dev-atv8.onrender.com"\
    WEBHOOK_TUNNEL_URL="https://n8n-dev-atv8.onrender.com" \
    VUE_APP_URL_BASE_API="https://n8n-dev-atv8.onrender.com" \
    N8N_HOST="n8n-dev-atv8.onrender.com" \
    POSTGRES_NON_ROOT_PASSWORD="db_password" \
    POSTGRES_NON_ROOT_USER="n8n_user"


# Expor a porta para que o n8n possa ser acessado
EXPOSE 5678

# Crie um volume para armazenar os dados persistentes do n8n
VOLUME ["/home/node/.n8n"]
