# Minimal Docker image for hifiasm_meta using Alpine base
FROM alpine:latest

# install hifiasm_meta
RUN apk update && \
    apk add --no-cache bash g++ linux-headers make musl-dev wget zlib-dev && \
    wget -qO- "https://github.com/xfengnefx/hifiasm-meta/archive/refs/tags/hamtv0.3.5.tar.gz" | tar -zx && \
    cd hifiasm-* && \
    make && \
    mv hifiasm_meta /usr/local/bin/ && \
    cd .. && \
    rm -rf hifiasm-*
