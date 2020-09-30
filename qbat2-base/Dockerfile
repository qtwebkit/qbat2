FROM debian:10.3-slim
ENV JHBUILD_RUN_AS_ROOT=1
COPY install-dependencies .
RUN apt-get update && ./install-dependencies && rm ./install-dependencies
