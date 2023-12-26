# BUILDPLATFORM  — matches the current machine. (e.g. linux/amd64)
# BUILDOS        — os component of BUILDPLATFORM, e.g. linux
# BUILDARCH      — e.g. amd64, arm64, riscv64
# BUILDVARIANT   — used to set ARM variant, e.g. v7
# TARGETPLATFORM — The value set with --platform flag on build
# TARGETOS       — OS component from --platform, e.g. linux
# TARGETARCH     — Architecture from --platform, e.g. arm64
# TARGETVARIANT  — 

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

