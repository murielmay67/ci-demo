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
