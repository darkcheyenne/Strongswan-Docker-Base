#/bin/bash
echo 🚀 Start von Erstellung von Docker Image Strongswan Base
echo "  🚀 Erstellen von Image fuer Strownswan 5.8.0"
docker build --pull --no-cache -f Dockerfile.5.8.0 -t darkcheyenne/strongswan-cosmic_base:5.8.0 . | grep 'built\|tagged'
echo "  🚀 Erstellen von Image fuer Strownswan 5.8.1"
docker build --pull -f Dockerfile.5.8.1 -t darkcheyenne/strongswan-cosmic_base:5.8.1 . | grep 'built\|tagged'
echo "  🚀 Erstellen von Image fuer Strownswan 5.8.4"
docker build --pull -f Dockerfile.5.8.4 -t darkcheyenne/strongswan-cosmic_base:5.8.4 -t darkcheyenne/strongswan-cosmic_base:latest . | grep 'built\|tagged'

echo 📡 Upload von Strongswan Base zu Dockerhub
echo "  📡 Upload von Image fuer Strownswan 5.8.0"
docker push darkcheyenne/strongswan-cosmic_base:5.8.0 
echo "  📡 Upload von Image fuer Strownswan 5.8.1"
docker push darkcheyenne/strongswan-cosmic_base:5.8.1
echo "  📡 Upload von Image fuer Strownswan 5.8.4"
docker push darkcheyenne/strongswan-cosmic_base:5.8.4
echo "  📡 Upload von Image fuer Strownswan latest"
docker push darkcheyenne/strongswan-cosmic_base:latest
