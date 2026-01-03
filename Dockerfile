FROM docker.n8n.io/n8nio/n8n:1.114.4

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip ffmpeg && \
    pip3 install --no-cache-dir edge-tts && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER node
