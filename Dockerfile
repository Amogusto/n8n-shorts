# ----- Dockerfile -----
FROM n8nio/n8n:1.49.0-ubuntu   # <-- ключевое отличие

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg python3 python3-pip && \
    pip3 install --no-cache-dir whisperx==3.4.0 pyannote-audio==3.1.0 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER node
EXPOSE 5678
