#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Pull the Docker image
docker pull tejaswaroop156/juice_shop_mod

# Run the Docker container
docker run -d -p 3000:3000 tejaswaroop156/juice_shop_mod
