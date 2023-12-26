# BUILDPLATFORM  — matches the current machine. (e.g. linux/amd64)
# BUILDOS        — os component of BUILDPLATFORM, e.g. linux
# BUILDARCH      — e.g. amd64, arm64, riscv64
# BUILDVARIANT   — used to set ARM variant, e.g. v7
# TARGETPLATFORM — The value set with --platform flag on build
# TARGETOS       — OS component from --platform, e.g. linux
# TARGETARCH     — Architecture from --platform, e.g. arm64
# TARGETVARIANT  — 

FROM alpine
WORKDIR /app
RUN apk add --no-cache curl
# RUN apk --no-cache add \
#     bash \
#     ca-certificates \
#     curl \
#     gettext \
#     git \
#     linux-pam \
#     openssh \
#     s6 \
#     sqlite \
#     su-exec \
#     gnupg \
#     && rm -rf /var/cache/apk/*
# ENTRYPOINT ["/entry.sh"]

CMD [ "/bin/sh" ]
