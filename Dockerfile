FROM rust:1.74.1

ARG TARGETARCH

# 安装 nodejs20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

# 安装 pnpm
RUN npm install -g pnpm

RUN cargo install diesel_cli --no-default-features --features sqlite

VOLUME /usr/src/myapp

WORKDIR /usr/src/myapp
