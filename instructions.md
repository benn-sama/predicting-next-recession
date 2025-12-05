# Recession Prediction Project

This project provides a fully reproducible environment for forecasting economic recessions using machine learning. It includes:

- A PostgreSQL database (automatically initialized)
- A Jupyter Notebook environment
- A Docker-based setup so no local Python or PostgreSQL installation is required

---

## 1. Prerequisites

Install Docker Desktop:

https://www.docker.com/products/docker-desktop/

Ensure Docker is running before continuing.

---

## 2. Project Structure

Your project directory should look like:

predicting-next-recession/  
├── Dockerfile  
├── docker-compose.yml  
├── requirements.txt  
├── init.sql  
├── main.ipynb  
└── dataset/

---

## 3. Build and Start the Project

From the root folder, run:

```
docker-compose up --build
```

This will:

- Build the notebook image  
- Start a PostgreSQL database container  
- Create the `rec_db` database  
- Initialize tables from `init.sql`  
- Launch Jupyter Notebook on port 8888  

The first build may take several minutes.

---

## 4. Open the Jupyter Notebook

After startup, open:

http://localhost:8888

No token or password is required.

---

## 5. Connect to PostgreSQL From the Notebook

Inside `main.ipynb`, use:

```python
import psycopg2

conn = psycopg2.connect(
    dbname="rec_db",
    user="ben",
    password="password123",
    host="postgres",
    port=5432
)

cur = conn.cursor()
cur.execute("SELECT 1;")
print(cur.fetchone())
```

Expected output:

```
(1,)
```

---

## 6. Stopping the Environment

Press CTRL + C

Then shut down:

```
docker-compose down
```

---

## 7. Restarting Without Rebuilding

```
docker-compose up
```

---

## 8. Database Persistence

PostgreSQL data is stored in a Docker volume named:

```
pgdata
```

To completely reset the database:

```
docker-compose down
docker volume rm predicting-next-recession_pgdata
docker-compose up --build
```

---

## 9. Common Issues

### Jupyter does not open
- Ensure Docker Desktop is running  
- Rebuild using `docker-compose up --build`

### Cannot connect to database
- Use `host="postgres"` instead of `localhost`  
- Ensure the database container is running

### Port 5432 already in use
Stop local PostgreSQL (macOS example):

```
brew services stop postgresql
```

### Build is slow
This is normal on the first build due to ML libraries.  
Subsequent builds use Docker cache and are much faster.

---

## 10. Summary

This environment allows you to:

- Run the Jupyter Notebook  
- Load datasets into PostgreSQL  
- Train recession prediction models  
- Produce visualizations and analysis  

Everything runs inside isolated Docker containers, ensuring a reproducible setup for all users.
