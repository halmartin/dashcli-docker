FROM ubuntu:22.04
ARG DASH_VERSION=4.5.0.1621

WORKDIR /tmp
COPY dashcli-setup_${DASH_VERSION}_amd64.deb .

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ./dashcli-setup_${DASH_VERSION}_amd64.deb

ENTRYPOINT ["/usr/bin/dashcli"]
