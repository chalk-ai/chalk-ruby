FROM ubuntu:22.04

ENV BUNDLER_VERSION=2.3.6 \
    BUNDLE_PATH=/app/vendor/bundle

RUN apt-get update && apt-get install -y \
    ca-certificates \
    sudo \
    wget \
    lsb-release \
    build-essential \
    bash \
    jq \
    curl \
    libffi-dev \
    git \
    libglib2.0-dev \
    ruby-full

# Install Apache Arrow 18
RUN wget https://apache.jfrog.io/artifactory/arrow/ubuntu/apache-arrow-apt-source-latest-jammy.deb && \
    apt-get install -y -V ./apache-arrow-apt-source-latest-jammy.deb && \
    apt-get update && \
    apt-get install -y -V libarrow-dev=18.* libarrow-glib-dev=18.* libparquet-dev=18.* libarrow-acero-dev=18.* gir1.2-arrow-1.0=18.*

RUN gem install bundler
