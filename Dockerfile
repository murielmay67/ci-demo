FROM debian:stable-slim
ARG DEBIAN_FRONTEND=noninteractive

RUN set -eux && \
    apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y \
    curl && \
    # ...
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

# ENTRYPOINT [ "/bin/bash" ]
