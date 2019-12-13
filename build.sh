#/bin/bash
logger Start von Erstellung von Docker Image Strongswan Base
docker build --pull --no-cache -f Dockerfile.5.8.0 -t darkcheyenne/strongswan-cosmic_base:5.8.0 . | grep 'built\|tagged' | logger
docker build --pull --no-cache -f Dockerfile.5.8.1 -t darkcheyenne/strongswan-cosmic_base:5.8.1 -t darkcheyenne/strongswan-cosmic_base:latest . | grep 'built\|tagged' | logger

logger Upload von Strongswan Base zu Dockerhub
docker push darkcheyenne/strongswan-cosmic_base:5.8.0 
docker push darkcheyenne/strongswan-cosmic_base:5.8.1
docker push darkcheyenne/strongswan-cosmic_base:latest
