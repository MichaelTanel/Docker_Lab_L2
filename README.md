# Docker_Lab_L2
The purpose of this lab is to containerize a web application consisting of a web server and a database.

Details for the webserver container:
- Accessible to the host on port 8080
- Running the latest version of nginx 

Details for the database container:
- Accessible to the host on port 3307
- Running the latest version of mysql

# Running the application via docker:
To run the application using `docker`, execute the `run-docker.sh` script. It will create a new network called `my_network`, and then build and run the docker containers using the Dockerfiles found in both the `frontend/` and `database/` folders.

These containers will be run in detached mode.

# Running the application via docker-compose:
To run the application using `docker-compose`, execute the `run-docker-compose.sh` script. It will use the `docker-compose.yaml` file to configure the nginx and mysql containers based on the Dockerfiles found in both the `frontend/` and `database/` folders.

It will create a new network called `my_network_2` for the containers to run on.
