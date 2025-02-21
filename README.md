# MySQL with phpMyAdmin using Docker Compose

This project sets up a MySQL database with phpMyAdmin using Docker Compose. The MySQL container is built from a custom Dockerfile that initializes the database with SQL scripts. phpMyAdmin provides a web interface to manage the database.

## 🚀 Features
- `.env` support for sensitive credentials
- Persistent volume for MySQL data
- Custom network for service communication

--

## 📦 Setup Instructions

### Clone the Repository
```bash
git clone https://github.com/ranjithdb/docker-mysql-phpmyadmin.git
cd docker-mysql-phpmyadmin
```

### Create a Docker Volume and Network
```
docker volume create my-volume-mysql-phpmyadmin
docker network create my-network-mysql-phpmyadmin
```
### Set Environment Variables
Create a .env file in the project root with the following content:
```
MYSQL_ROOT_PASSWORD=your-secret-password
MYSQL_DATABASE=mydb
```

### Build and Start the Containers
```
docker-compose up -d
(or)
docker compose up -d
```
This will:

- Build the MySQL container from the Dockerfile
- Pull the phpMyAdmin image
- Start both services

### Access phpMyAdmin
Once the containers are running, open your browser and go to:
```
http://localhost:8080
```
Use the following credentials to log in:

- Username: root
- Password: The value from the .env file

### Stop and Remove Containers
```
docker-compose down
(or)
docker compose down
```

### Remove Volume and Network (Optional)
```
docker volume rm my-volume-mysql-phpmyadmin
docker network rm my-network-mysql-phpmyadmin
```

