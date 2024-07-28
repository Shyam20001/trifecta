# Dockerfile
FROM debian:latest

RUN apt-get update && \
    apt-get install -y tor

# Configuration for Tor
RUN echo "SocksPort 0.0.0.0:9050\nHTTPTunnelPort 0.0.0.0:8118" > /etc/tor/torrc

CMD ["tor"]
