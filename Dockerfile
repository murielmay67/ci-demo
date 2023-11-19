FROM alpine
WORKDIR /app
RUN apk add --no-cache curl
CMD [ "/bin/sh" ]

# docker build -t yanhao98/drone-test-image .
# docker buildx build --platform linux/amd64,linux/arm64 -t yanhao98/drone-test-image --push .

# docker run -it --rm yanhao98/drone-test-image