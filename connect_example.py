import os
import psycopg
from dotenv import load_dotenv

load_dotenv()

#TEST:
conn = psycopg.connect(
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT"),
    dbname=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD")
)

with conn.cursor() as cur:
    cur.execute("SELECT current_database(), current_user;")
    print(cur.fetchone())

conn.close()

# Conn function
def get_connection():
    return psycopg.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        dbname=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )  