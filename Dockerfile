FROM alpine:3.16.2
ENV PROM_VERSION 2.38.0
RUN apk add --no-cache wget unzip bash
RUN wget https://github.com/prometheus/prometheus/releases/download/v${PROM_VERSION}/prometheus-${PROM_VERSION}.linux-amd64.tar.gz -O /tmp/prometheus.tar.gz && \
  cd /tmp && \
  tar xzvf prometheus.tar.gz && \
  mv prometheus-${PROM_VERSION}.linux-amd64/prometheus /bin/
