FROM rust:slim-bookworm
RUN apt-get update -y \
    && apt-get dist-upgrade -y \
    && apt-get install -y libssl-dev pkg-config \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
ENV CARGO_HOME /cargo
RUN cargo install sqlx-cli
ENTRYPOINT [ "/bin/bash", "-c" ]
