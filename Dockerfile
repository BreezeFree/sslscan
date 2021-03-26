FROM alpine:3.13

RUN apk add --no-cache alpine-sdk perl zlib-dev linux-headers

RUN git clone https://github.com/rbsec/sslscan.git && \
  cd sslscan && \
  make static && \
  make install && \
  rm -rf ../sslscan

ENTRYPOINT ["/usr/bin/sslscan"]
