FROM rust:1.73 as builder
RUN apt-get update && apt-get install -y libpcap-dev
RUN git clone --depth 1 https://github.com/nzymedefense/nzyme
WORKDIR nzyme/tap
RUN cargo build --release

FROM ghcr.io/spr-networks/container_template:latest
RUN apt-get update && apt-get install -y curl tzdata libpcap0.8
COPY --from=builder /nzyme/tap/target/release/nzyme-tap /usr/bin/nzyme-tap
COPY scripts /scripts/
ENTRYPOINT ["/scripts/startup.sh"]
