# Script to setup build environment using Dockerized-Arch 

## Project Description

This project provides a Docker-based setup to se up build environment. The repository includes a `Dockerfile` for building the Docker image and a `docker-compose.yml` file for managing multi-container Docker applications.

## Table of Contents

- [Project Description](#project-description)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [File Structure](#file-structure)
- [Contributing](#contributing)

## Features

- Easy setup using Docker and Docker Compose
- Clean and isolated environment for running scripts
- Flexible configuration options

## Prerequisites

Before you begin, ensure you have the following software installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup Instructions

### Building the Docker Image

docker-compose.yml: update the workspace path on line 9.
Dockerfile: update the username on line 4 to updated_username.

To build the Docker image, navigate to the project directory
To set up and run the services using Docker Compose run the following command:

```bash
sudo docker-compose up --build -d
```

This command will build the images (if not already built) and start the containers defined in the `docker-compose.yml` file.

## Usage

Once the containers are up and running, you can interact with them using Docker commands or through the Docker Compose interface. Here are some common tasks:

### Accessing a Running Container

To access a running container, use the following command:

```bash
sudo docker ps
sudo docker exec -it <container_name> /bin/bash
```

Replace `<container_name>` with the name of the container you want to access.

### Stopping the Services

To stop the running services, use the following command:

```bash
sudo docker-compose down
```

## File Structure

The project directory contains the following files:

```
scripts-arch-docker/
├── Dockerfile
├── docker-compose.yml
└── README.md
```

- `Dockerfile`: Defines the Docker image configuration.
- `docker-compose.yml`: Defines the Docker Compose configuration for multi-container applications.
- `README.md`: Provides additional information or instructions related to the project.

## Contributing

We welcome contributions to this project! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request.
