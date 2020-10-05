FROM debian:10.5-slim
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8
COPY install-dependencies .
RUN \
# Add repositories
    sed -i -e 's/ main/ main contrib non-free/g' /etc/apt/sources.list \
    && apt-get update \
# Generate en_US locale
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends locales \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
# Install packages
    && DEBIAN_FRONTEND=noninteractive BUILDING_DOCKER=1 ./install-dependencies \
    && rm ./install-dependencies \
# Clear apt cache
    && rm -rf /var/lib/apt/lists/*
