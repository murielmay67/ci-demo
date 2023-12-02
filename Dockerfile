FROM alpine
WORKDIR /app
RUN apk add --no-cache curl
CMD [ "/bin/sh" ]
