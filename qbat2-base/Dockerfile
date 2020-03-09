FROM debian:10.3-slim
COPY install-dependencies .
RUN apt-get update && ./install-dependencies && rm ./install-dependencies
