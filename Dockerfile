FROM alpine:3.22.2
ENV PROM_VERSION 3.7.3
RUN apk add --no-cache wget unzip bash
RUN wget https://github.com/prometheus/prometheus/releases/download/v${PROM_VERSION}/prometheus-${PROM_VERSION}.linux-amd64.tar.gz -O /tmp/prometheus.tar.gz && \
  cd /tmp && \
  tar xzvf prometheus.tar.gz && \
  mv prometheus-${PROM_VERSION}.linux-amd64/prometheus /bin/
