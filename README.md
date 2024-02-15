# Docker Image for Unit Testing with Lychee

Docker image with the [lychee](https://github.com/lycheeverse/lychee) executable.

### Build & Run

To build locally

    $ docker build -t repo-name/lychee:0.14.3 .

To create a container in detached mode

    $ docker run -itd --name lychee repo-name/lychee:0.14.3

To log in to the shell in the detached container

    $ docker exec -ti lychee /bin/sh
