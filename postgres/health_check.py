from flask import Flask
import psycopg2
import os

app = Flask(__name__)

# Definir configurações do banco de dados a partir de variáveis de ambiente
DB_HOST = os.getenv("DB_HOST", "localhost")
DB_PORT = os.getenv("DB_PORT", "5432")
DB_NAME = os.getenv("DB_NAME", "n8n")
DB_USER = os.getenv("DB_USER", "n8n_user")
DB_PASSWORD = os.getenv("DB_PASSWORD", "db_password")

@app.route("/healthz")
def health_check():
    try:
        # Tentar conectar ao Postgres
        conn = psycopg2.connect(
            host=DB_HOST,
            port=DB_PORT,
            dbname=DB_NAME,
            user=DB_USER,
            password=DB_PASSWORD
        )
        conn.close()
        return "Healthy", 200
    except Exception as e:
        return f"Unhealthy: {e}", 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
