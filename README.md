# Build the image
docker build -t slim .

# Run a shell in the container
docker run -it slim /bin/bash

# Install docker registry in a lock down machine

docker pull registry:2
 
docker save -o registry.tar registry:2

docker load -i registry.tar

docker run -d -p 5000:5000 --restart=always --name registry registry:2
