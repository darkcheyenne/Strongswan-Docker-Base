#/bin/bash
docker run -d --restart unless-stopped -p 500:500/udp -p 4500:4500/udp -p 1701:1701/udp --privileged darkcheyenne/strongswan-cosmic_base:5.8.0
