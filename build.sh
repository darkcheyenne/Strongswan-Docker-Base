#/bin/bash
docker build --pull -f Dockerfile.5.8.0 -t darkcheyenne/strongswan-cosmic_base:5.8.0 .
docker build --pull -f Dockerfile.5.8.1 -t darkcheyenne/strongswan-cosmic_base:5.8.1 -t darkcheyenne/strongswan-cosmic_base:latest .

docker push darkcheyenne/strongswan-cosmic_base:5.8.0 
docker push darkcheyenne/strongswan-cosmic_base:5.8.1
docker push darkcheyenne/strongswan-cosmic_base:latest
