#!/bin/bash

# Create a new docker network for the nginx server and mysql server to communicate on.
docker network create my_network

# Use the custom Dockerfile in the frontend folder.
cd src/frontend
docker build -t nginx_web_server_container .
# Run in detached mode.
docker run -d -p 8080:80 --network my_network --name nginx_web_server nginx_web_server_container

# Use the custom Dockerfile in the database folder.
cd ../database
docker build -t mysql_database_container .
# Run in detached mode.
docker run -d -p 3307:3306 --network my_network --name mysql_database mysql_database_container