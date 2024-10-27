# Use a imagem oficial do Postgres como base
FROM postgres:16

# Defina as variáveis de ambiente necessárias
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_DB=${POSTGRES_DB}

# Copiar o script de inicialização para o container
COPY ./init-data.sh /docker-entrypoint-initdb.d/init-data.sh

# Exponha a porta do Postgres
EXPOSE 5432
