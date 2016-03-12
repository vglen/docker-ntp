## Using the Dockerfile

### System Requirements

Your computer should have Docker and Docker-compose installed. See specific directions for your platform:

    http://docs.docker.com/mac/started/
    
### Grabbing the Image for use

    docker pull vglen/ntp:latest
    
### Building the image (not needed unless your are making changes and tagging new version)

We are not currently hosting docker images anywhere, so you need to build it locally. From within this directory
execute this command to build the image:

    docker build -t vglen/ntp: .
    
Note: You only need to do this one time or whenever the docker image changes (e.g., we change PHP version or packages)

### Run the application

From within this directory run this command:

    docker-compose up
    
This will read the docker-compose.yml file and run the image with the proper parameters. Once the image is running
make note of the IP that was assigned to it. You can either get this from the Kitematic UI, if using that or run

    docker inspect <container_id>
    
and get the value from the resulting JSON ( HostConfig -> PortBindings -> 123/tcp )

