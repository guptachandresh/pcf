FROM ubuntu:latest

# Install Git, Python 3.9, Docker and Docker Compose
RUN apt-get update && \
    apt-get -y install git python3.9 docker.io docker-compose

# Clone the Git repository
RUN git clone https://gitlab.com/invuls/pentest-projects/pcf && \
    cd pcf

# Set the working directory to the root of the Git repository
WORKDIR /pcf

# Start the Docker container using Docker Compose
CMD ["docker-compose", "up"]