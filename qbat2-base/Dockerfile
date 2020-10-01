FROM debian:10.3-slim
ENV JHBUILD_RUN_AS_ROOT=1 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8
COPY install-dependencies .
RUN apt-get update && ./install-dependencies && rm ./install-dependencies
