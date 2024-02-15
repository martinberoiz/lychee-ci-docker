FROM rust:alpine3.19 as builder

USER root
RUN apk update
RUN apk add git
RUN git clone https://github.com/lycheeverse/lychee.git
WORKDIR /lychee

RUN git fetch origin; git checkout v0.14.3
RUN apk add --no-cache musl-dev
RUN apk add libressl-dev
RUN cargo build --release
RUN strip target/release/lychee

FROM alpine:3.19

USER root

COPY --from=builder /lychee/target/release/lychee /usr/local/bin/
