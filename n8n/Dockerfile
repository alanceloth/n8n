# Use a imagem oficial do n8n como base
FROM docker.n8n.io/n8nio/n8n

# Defina as variáveis de ambiente necessárias
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=postgres
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=${POSTGRES_DB}
ENV DB_POSTGRESDB_USER=${POSTGRES_NON_ROOT_USER}
ENV DB_POSTGRESDB_PASSWORD=${POSTGRES_NON_ROOT_PASSWORD}

# Exponha a porta do serviço
EXPOSE 5678

# Iniciar o n8n quando o contêiner for executado
CMD ["n8n"]
