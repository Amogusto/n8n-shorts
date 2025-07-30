FROM n8nio/n8n:1.49.0

RUN apt-get update && apt-get install -y ffmpeg python3 python3-pip \
 && pip install --no-cache-dir whisperx==3.4.0 pyannote-audio==3.1.0

EXPOSE 5678
