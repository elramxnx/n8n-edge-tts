FROM docker.n8n.io/n8nio/n8n:1.114.4

USER root

RUN apk update && \
    apk add --no-cache \
      python3 \
      py3-pip \
      ffmpeg \
      bash && \
    pip3 install --no-cache-dir edge-tts

USER node
