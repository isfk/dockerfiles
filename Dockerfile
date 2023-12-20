FROM rust:1.74.1

ARG TARGETARCH

RUN cargo install diesel_cli --no-default-features --features sqlite

VOLUME /usr/src/myapp

WORKDIR /usr/src/myapp