FROM gitpod/workspace-full

ENV DEBIAN_FRONTEND=noninteractive
ENV SPARK_LOCAL_IP=127.0.0.1
USER root

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk python3-venv net-tools netcat socat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER gitpod